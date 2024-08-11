import 'dart:async';
import 'dart:isolate';

import 'package:epub_parser/epub_parser.dart';
import 'package:html/parser.dart' show parse;
import 'package:zahra/model/epubBookLocal.dart';

import '../model/search_model.dart';
import 'epub_helper.dart';

class SearchHelper {

  // Factory constructor
  factory SearchHelper() => _instance;

  // Private constructor
  SearchHelper._internal();
  // Singleton instance
  static final SearchHelper _instance = SearchHelper._internal();

  final int searchSurroundCharNum = 40;
  bool _isSearchStopped = false;


  Future<void> searchAllBooks(List<EpubBookLocal> allBooks, String word, Function(List<SearchModel>) onPartialResults) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_searchAllBooks, SearchTask(allBooks, word, receivePort.sendPort));

    await for (final message in receivePort) {
      if (message is List<SearchModel>) {
        onPartialResults(message);
      } else if (message is String && message == 'done') {
        break;
      } else if (message is SendPort) {
        message.send(null);
      }
    }
  }


  Future<void> _searchAllBooks(SearchTask task) async {
    // Create a ReceivePort to get messages from the main isolate
    final port = ReceivePort();
    // Send the port to the main isolate
    task.sendPort.send(port.sendPort);

    final List<SearchModel> allResults = [];

    for (final epubBook in task.allBooks) {
      if (_isSearchStopped) break;

      // Extract necessary information
      final bookName = epubBook.epubBook?.Title;
      final bookAddress =epubBook.bookPath;
      final List<HtmlFileInfo> epubContent = await extractHtmlContentWithEmbeddedImages(epubBook.epubBook!);

      // Extract spine items from EPUB
      final spineItems = epubBook.epubBook?.Schema?.Package?.Spine?.Items;
      final List<String> idRefs = [];

      if (spineItems != null) {
        for (final item in spineItems) {
          if (item.IdRef != null) {
            idRefs.add(item.IdRef!);
          }
        }
      }

      // Reorder HTML files based on spine
      final epubNewContent = reorderHtmlFilesBasedOnSpine(epubContent, idRefs);
      final spineHtmlContent = epubNewContent.map((info) => info.modifiedHtmlContent).toList();

      // Search HTML contents in the book
      final result = await searchHtmlContents(spineHtmlContent, task.word, bookName, bookAddress);

      // Accumulate results for this book
      allResults.addAll(result);

      // Send intermediate results back to the main isolate
      task.sendPort.send(List<SearchModel>.from(allResults)); // Send a copy to avoid race conditions

    }

    // Send the final accumulated results after processing all books
    task.sendPort.send('done');
  }


  Future<List<SearchModel>> _searchSingleBook(String bookPath, String sw, EpubBook? epub, [List<HtmlFileInfo>? spineFile]) async {
    spineFile ??= [];

    final List<SearchModel> tempResult = [];
    EpubBook epubBook;
    List<HtmlFileInfo> spine;
    try {
      if (spineFile.isEmpty || epub == null) {
         epubBook = await loadEpubFromAsset(bookPath);
         spine = await extractHtmlContentWithEmbeddedImages(epubBook);
      } else {
        spine = spineFile;
        epubBook = epub;
      }
      final spineHtmlContent = spine.map((info) => info.modifiedHtmlContent).toList();
      final spineHtmlFileName = spine.map((info) => info.fileName).toList();
      final spineHtmlIndex = spine.map((info) => info.pageIndex).toList();

      for (int i = 0; i < spineHtmlContent.length; i++) {
        final page = _removeHtmlTags(spineHtmlContent[i]);
        var searchIndex = _searchInString(page, sw, 0);
        while (searchIndex.startIndex >= 0) {
          tempResult.add(SearchModel(
            searchedWord: sw,
            pageIndex: spineHtmlIndex[i],
            bookAddress: bookPath,
            bookTitle: epubBook.Title,
            pageId: spineHtmlFileName[i],
            searchCount: tempResult.length + 1, // Updated to directly use the length of tempResult for search count
            spanna: _getHighlightedSection(searchIndex, page),
          ),);

          searchIndex = _searchInString(page, sw, searchIndex.lastIndex + 1);
        }
      }
    } catch (e) {
      print('error in parsing epub: ${e.toString()}');
    }

    return tempResult;
  }

  // Your existing searchHtmlContents function remains as is

  Future<List<SearchModel>> searchHtmlContents(List<String> htmlContents, String searchWord, String? bookName, String? bookAddress) async {
    final List<SearchModel> results = [];

    for (int i = 0; i < htmlContents.length; i++) {
      final String pageContent = _removeHtmlTags(htmlContents[i]);
      SearchIndex searchIndex = _searchInString(pageContent, searchWord, 0);

      while (searchIndex.startIndex >= 0) {
        results.add(SearchModel(
          pageIndex: i +1,  // Use the loop index as the page index
          searchedWord: searchWord,
          searchCount: results.length + 1,  // Directly use the length of results for search count
          spanna: _getHighlightedSection(searchIndex, pageContent),
          bookAddress: bookAddress,
          bookTitle: bookName,
        ),);

        // Continue searching from the end of the last found index
        searchIndex = _searchInString(pageContent, searchWord, searchIndex.lastIndex + 1);
      }
    }

    return results;
  }


  String _getHighlightedSection(SearchIndex index, String wholeString) {
    final sw = wholeString.substring(index.startIndex, index.lastIndex);
    final swLength = index.lastIndex - index.startIndex;
    final lastIndex = wholeString.length;
    final firstCutIndex = index.startIndex - searchSurroundCharNum > 0 ? index.startIndex - searchSurroundCharNum : 0;
    final lastCutIndex = index.lastIndex + searchSurroundCharNum > lastIndex ? lastIndex : index.lastIndex + searchSurroundCharNum;
    final surr1 = '...${wholeString.substring(firstCutIndex, index.startIndex)}';
    final surr2 = '${wholeString.substring(index.lastIndex, lastCutIndex)}...';
    return '$surr1<mark>$sw</mark>$surr2';
  }

  SearchIndex _searchInString(String pageString, String sw, int start) {
    final startIndex = pageString.indexOf(sw, start);
    return startIndex >= 0 ? SearchIndex(startIndex, startIndex + sw.length) : SearchIndex(-1, -1);
  }

  Future<void> stopSearch(bool stop) async {
    _isSearchStopped = stop;
  }

  String _removeHtmlTags(String htmlString) => parse(htmlString).documentElement!.text;
}

class SearchIndex {

  SearchIndex(this.startIndex, this.lastIndex);
  final int startIndex;
  final int lastIndex;
}


class SearchTask {

  SearchTask(this.allBooks, this.word, this.sendPort);
  final List<EpubBookLocal> allBooks;
  final String word;
  final SendPort sendPort;
}
