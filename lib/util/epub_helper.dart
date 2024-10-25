import 'dart:convert';

import 'package:epub_parser/epub_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zahra/util/page_helper.dart';

import '../model/category_model.dart';
import '../model/reference_model.dart';
import '../model/search_model.dart';
import '../model/tree_toc_model.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;

String convertLatinNumbersToArabic(String input) {
  const arabicDigits = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  // Parse the HTML document
  final document = html_parser.parse(input);

  // A helper function to traverse and replace numbers in text nodes
  void traverseAndReplace(dom.Node node) {
    if (node is dom.Text) {
      // Replace Latin numbers with Arabic numbers in the text node
      node.text = node.text.replaceAllMapped(RegExp(r'[0-9]'), (match) {
        final latinDigit = int.parse(match[0]!);
        return arabicDigits[latinDigit];
      });
    } else if (node.hasChildNodes()) {
      // Recursively traverse the child nodes
      node.nodes.forEach(traverseAndReplace);
    }
  }

  // Start traversing from the document body
  traverseAndReplace(document.body!);

  // Return the modified HTML as a string
  return document.outerHtml;
}


Future<void> openEpub({
  required BuildContext context,
  CategoryModel? cat,
  ReferenceModel? reference,
  EpubChaptersWithBookPath? toc,
  SearchModel? search,
}) async {
  await Navigator.pushNamed(
    context,
    '/epubViewer',
    arguments: {
      'cat': cat,
      'reference': reference,
      'toc': toc,
      'search': search,
    },
  );
}


Future<List<HtmlFileInfo>> extractHtmlContentWithEmbeddedImages(
    EpubBook epubBook,) async {
  final EpubContent? bookContent = epubBook.Content;
  final Map<String, EpubByteContentFile>? images = bookContent?.Images;
  final Map<String, EpubTextContentFile>? htmlFiles = bookContent?.Html;

  final List<HtmlFileInfo> htmlContentList = [];
  if (htmlFiles != null) {
    int index = 0; // Initialize a counter to keep track of the file index
    for (final entry in htmlFiles.entries) {
      final String htmlContent = embedImagesInHtmlContent(entry.value, images);
      // Assuming HtmlFileInfo can take an additional `fileIndex` parameter
      htmlContentList.add(HtmlFileInfo(entry.key, htmlContent, index++));
    }
  }

  return htmlContentList;
}


String embedImagesInHtmlContent(EpubTextContentFile htmlFile,
    Map<String, EpubByteContentFile>? images,) {
  String htmlContent = htmlFile.Content!;
  final imgRegExp = RegExp(r'<img[^>]*>');
  final Iterable<RegExpMatch> imgTags = imgRegExp.allMatches(htmlContent);

  for (final imgMatch in imgTags) {
    final String imgTag = imgMatch.group(0)!;
    final String imageName = extractImageNameFromTag(imgTag);
    final String? base64Image = convertImageToBase64(images?['Images/$imageName']);

    if (base64Image != null) {
      final String replacement = '<img src="data:image/jpg;base64,$base64Image" alt="$imageName" />';
      htmlContent = htmlContent.replaceFirst(imgTag, replacement);
    }
  }

  return htmlContent;
}


List<HtmlFileInfo> reorderHtmlFilesBasedOnSpine(List<HtmlFileInfo> htmlFiles, List<String>? spineItems) {
  if (spineItems == null || spineItems.isEmpty) return htmlFiles;

  final Map<String, HtmlFileInfo> htmlFilesMap = {
    for (final file in htmlFiles) file.fileName.replaceAll('Text/', ''): file,
  };

  final List<HtmlFileInfo> orderedFiles = [];
  for (final spineItem in spineItems) {
    final HtmlFileInfo? file = htmlFilesMap[spineItem.replaceFirst('x', '')];
    if (file != null) {
      orderedFiles.add(file);
    }
  }
  return orderedFiles;
}


Future<double?> getLastPageNumberForBook({required String assetPath}) async {
  final pageHelper = PageHelper();
  final parts = assetPath.split('/'); // Split the string by '/'
  final bookAddress = parts.last;
  final lastPageNumber =
  await pageHelper.getLastPageNumberForBook(bookAddress);
  return lastPageNumber;
}

String? convertImageToBase64(EpubByteContentFile? imageFile) {
  if (imageFile == null) return null;
  return base64Encode(imageFile.Content!);
}


Future<int> findPageIndexInEpub(EpubBook epubBook, String fileName) async {
  final EpubContent? bookContent = epubBook.Content;
  final Map<String, EpubTextContentFile>? htmlFiles = bookContent?.Html;
  if (htmlFiles != null) {
    int index = 0;
    for (final String key in htmlFiles.keys) {
      if (key == fileName) {
        return index;
      }
      index++;
    }
  }
  // If chapterFileName is not found in the map, return -1 or handle it as needed.
  return -1;
}


String extractImageNameFromTag(String imageTag) {
  // Define a regular expression to extract the image filename
  final RegExp imgSrcRegex = RegExp(r'src="([^"]+)"');

  // Find the first match of the regular expression in the HTML content
  final Match? match = imgSrcRegex.firstMatch(imageTag);

  // Extract the image filename if a match is found
  String imageName = '';
  if (match != null && match.groupCount >= 1) {
    imageName = match.group(1)!;
    // Split the path and get the filename
    final List<String> pathSegments = imageName.split('/');
    if (pathSegments.isNotEmpty) {
      imageName = pathSegments.last;
    }
  }
  return imageName;
}

Future<EpubBook> loadEpubFromAsset(String assetPath) async {
  final ByteData data = await rootBundle.load(assetPath);
  final List<int> bytes = data.buffer.asUint8List();

  final EpubBook epubBook = await EpubReader.readBook(Uint8List.fromList(bytes));

  return epubBook;
}

class HtmlFileInfo {

  HtmlFileInfo(this.fileName, this.modifiedHtmlContent, this.pageIndex);
  final String fileName;
  final String modifiedHtmlContent;
  final int pageIndex;
}

