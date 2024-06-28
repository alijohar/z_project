import 'dart:async';
import 'package:epub_parser/epub_parser.dart';
import 'package:html/dom.dart' as dom;
import '../model/search_model.dart';
import 'epub_helper.dart';
import 'package:html/parser.dart' show parse;

class SearchHelper {
  final int searchSurroundCharNum = 40;
  bool _isSearchStopped = false;

  Future<void> searchAllBooks(
      List<String> allBooks, String word, Function(List<SearchModel>) onResultsFound, EpubBook? epub, [List<HtmlFileInfo>? spineFile]) async {
    spineFile ??= [];
    final List<SearchModel> allResults = [];
    for (final book in allBooks) {
      if (_isSearchStopped) break;
      final result = await _searchSingleBook(book, word, epub, spineFile);
      allResults.addAll(result);
      onResultsFound(allResults);
    }
  }

  Future<List<SearchModel>> _searchSingleBook(String bookPath, String sw, EpubBook? epub, [List<HtmlFileInfo>? spineFile]) async {
    spineFile ??= [];

    List<SearchModel> tempResult = [];
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
      var spineHtmlContent = spine.map((info) => info.modifiedHtmlContent).toList();
      var spineHtmlFileName = spine.map((info) => info.fileName).toList();
      var spineHtmlIndex = spine.map((info) => info.pageIndex).toList();

      for (int i = 0; i < spineHtmlContent.length; i++) {
        var page = _removeHtmlTags(spineHtmlContent[i]);
        var searchIndex = _searchInString(page, sw, 0);
        while (searchIndex.startIndex >= 0) {
          tempResult.add(SearchModel(
            pageIndex: spineHtmlIndex[i],
            bookAddress: bookPath,
            bookTitle: epubBook.Title,
            pageId: spineHtmlFileName[i],
            searchCount: tempResult.length + 1, // Updated to directly use the length of tempResult for search count
            spanna: _getHighlightedSection(searchIndex, page),
          ));

          searchIndex = _searchInString(page, sw, searchIndex.lastIndex + 1);
        }
      }
    } catch (e) {
      print('error in parsing epub: ${e.toString()}');
    }

    return tempResult;
  }

  // Your existing searchHtmlContents function remains as is

  Future<void> searchingAllBooks(
      List<String> allBooks,
      String word,
      Function(List<SearchModel>) onResultsFound,
      ) async {
    final List<SearchModel> allResults = [];

    // Iterate through each book asynchronously
    for (final book in allBooks) {
      if (_isSearchStopped) break;

      // Load EPUB book (assuming loadEpubFromAsset is a custom or library function)
      final EpubBook epubBook = await loadEpubFromAsset(book);

      // Extract necessary information
      final bookName = epubBook.Title;
      final bookAddress = book.split('/').last;
      final List<HtmlFileInfo> epubContent =
      await extractHtmlContentWithEmbeddedImages(epubBook);

      // Extract spine items from EPUB (assuming this structure exists)
      var spineItems = epubBook.Schema?.Package?.Spine?.Items;
      List<String> idRefs = [];

      if (spineItems != null) {
        for (var item in spineItems) {
          if (item.IdRef != null) {
            idRefs.add(item.IdRef!);
          }
        }
      }

      // Reorder HTML files based on spine
      final epubNewContent = reorderHtmlFilesBasedOnSpine(epubContent, idRefs);
      final spineHtmlContent =
      epubNewContent.map((info) => info.modifiedHtmlContent).toList();

      // Search HTML contents in the book
      final result = await searchHtmlContents(spineHtmlContent, word, bookName, bookAddress);

      // Accumulate results for this book
      allResults.addAll(result);

      // Emit current accumulated results
      onResultsFound(List.of(allResults)); // Emit a copy of allResults to avoid mutation

      // You can handle UI update here or wherever onResultsFound is called
    }
  }
  Future<List<SearchModel>> searchHtmlContents(List<String> htmlContents, String searchWord, String? bookName, String? bookAddress) async {
    List<SearchModel> results = [];

    for (int i = 0; i < htmlContents.length; i++) {
      String pageContent = _removeHtmlTags(htmlContents[i]);
      SearchIndex searchIndex = _searchInString(pageContent, searchWord, 0);

      while (searchIndex.startIndex >= 0) {
        results.add(SearchModel(
          pageIndex: i +1,  // Use the loop index as the page index
          searchCount: results.length + 1,  // Directly use the length of results for search count
          spanna: _getHighlightedSection(searchIndex, pageContent),
          bookAddress: bookAddress,
          bookTitle: bookName
        ));

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
    final surr1 = "...${wholeString.substring(firstCutIndex, index.startIndex)}";
    final surr2 = "${wholeString.substring(index.lastIndex, lastCutIndex)}...";
    return "$surr1<mark>$sw</mark>$surr2";
  }

  SearchIndex _searchInString(String pageString, String sw, int start) {
    final startIndex = pageString.indexOf(sw, start);
    return startIndex >= 0 ? SearchIndex(startIndex, startIndex + sw.length) : SearchIndex(-1, -1);
  }

  Future<void> stopSearch(bool stop) async {
    _isSearchStopped = stop;
  }

  String _removeHtmlTags(String htmlString) {
    return parse(htmlString).documentElement!.text;
  }
}

class SearchIndex {
  final int startIndex;
  final int lastIndex;

  SearchIndex(this.startIndex, this.lastIndex);
}
