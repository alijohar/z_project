import 'package:epub_viewer/epub_viewer.dart' as epub_viewer;


import '../model/history_model.dart';
import '../model/reference_model.dart';
import '../repository/hostory_database.dart';
import '../repository/reference_database.dart';
import '../util/page_helper.dart';

/// Creates the full persistence bundle required by `epub_viewer`.
epub_viewer.EpubViewerPersistence createEpubViewerPersistence({
  ReferencesDatabase? referencesDatabase,
  HistoryDatabase? historyDatabase,
  PageHelper? pageHelper,
  epub_viewer.SearchService? searchService,
}) {
  final referencesDb = referencesDatabase ?? ReferencesDatabase.instance;
  final historyDb = historyDatabase ?? HistoryDatabase.instance;
  final helper = pageHelper ?? PageHelper();
  final effectiveSearchService =
      searchService ?? epub_viewer.DefaultSearchService();

  return epub_viewer.EpubViewerPersistence(
    bookmarkDataSource: ViewerBookmarkDataSource(referencesDb),
    historyDataSource: ViewerHistoryDataSource(historyDb),
    pageProgressStore: ViewerPageProgressStore(helper),
    searchService: effectiveSearchService,
  );
}

class ViewerBookmarkDataSource implements epub_viewer.BookmarkDataSource {
  ViewerBookmarkDataSource(this._referencesDatabase);

  final ReferencesDatabase _referencesDatabase;

  @override
  Future<bool> isBookmarked(String bookPath, String pageIndex) {
    return _referencesDatabase.isBookmarkExist(bookPath, pageIndex);
  }

  @override
  Future<void> removeBookmark(String bookPath, String pageIndex) {
    return _referencesDatabase.deleteReferenceByBookPathAndPageNumber(
      bookPath,
      pageIndex,
    );
  }

  @override
  Future<bool> saveBookmark(epub_viewer.EpubBookmark bookmark) async {
    final existing = await _referencesDatabase.getReferenceByBookTitleAndPage(
      bookmark.bookPath,
      bookmark.pageIndex,
    );
    if (existing.isNotEmpty) {
      return false;
    }

    final reference = ReferenceModel(
      title: bookmark.title,
      bookName: bookmark.bookName,
      bookPath: bookmark.bookPath,
      navIndex: bookmark.pageIndex,
      fileName: bookmark.fileName,
    );

    final result = await _referencesDatabase.addReference(reference);
    return result != 0;
  }
}

class ViewerHistoryDataSource implements epub_viewer.HistoryDataSource {
  ViewerHistoryDataSource(this._historyDatabase);

  final HistoryDatabase _historyDatabase;

  @override
  Future<bool> saveHistory(epub_viewer.EpubHistoryEntry historyEntry) async {
    final existing = await _historyDatabase.getHistoryByBookTitleAndPage(
      historyEntry.bookPath,
      historyEntry.pageIndex,
    );
    if (existing.isNotEmpty) {
      return false;
    }

    final history = HistoryModel(
      title: historyEntry.title,
      bookName: historyEntry.bookName,
      bookPath: historyEntry.bookPath,
      navIndex: historyEntry.pageIndex,
    );

    final result = await _historyDatabase.addHistory(history);
    return result != 0;
  }
}

class ViewerPageProgressStore implements epub_viewer.PageProgressStore {
  ViewerPageProgressStore(this._pageHelper);

  final PageHelper _pageHelper;

  @override
  Future<double?> loadLastPage(String bookPath) {
    return _pageHelper.getLastPageNumberForBook(bookPath);
  }

  @override
  Future<void> saveLastPage(String bookPath, double pageIndex) {
    return _pageHelper.saveBookData(bookPath, pageIndex);
  }
}
