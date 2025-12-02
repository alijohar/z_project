import 'package:epub_bookmarks/epub_bookmarks.dart';

import '../repository/hostory_database.dart';
import '../repository/reference_database.dart';

/// Creates the persistence bundle used by `epub_bookmarks`.
BookmarkPersistence createBookmarkPersistence({
  ReferencesDatabase? referencesDatabase,
  HistoryDatabase? historyDatabase,
}) {
  final referencesDb = referencesDatabase ?? ReferencesDatabase.instance;
  final historyDb = historyDatabase ?? HistoryDatabase.instance;

  return BookmarkPersistence(
    bookmarkDataSource: BookmarkListDataSource(referencesDb),
    historyDataSource: BookmarkHistoryDataSource(historyDb),
  );
}

class BookmarkListDataSource implements BookmarkDataSource {
  BookmarkListDataSource(this._database);

  final ReferencesDatabase _database;

  @override
  Future<List<Bookmark>> getAllBookmarks() async {
    final references = await _database.getAllReferences();
    return references
        .map(
          (reference) => Bookmark(
        id: reference.id,
        title: reference.title,
        bookName: reference.bookName,
        bookPath: reference.bookPath,
        pageIndex: reference.navIndex,
        fileName: reference.fileName,
      ),
    )
        .toList();
  }

  @override
  Future<void> deleteBookmark(int id) async {
    await _database.deleteReference(id);
  }

  @override
  Future<void> clearAllBookmarks() async {
    await _database.clearAllReferences();
  }

  @override
  Future<bool> isBookmarked(String bookPath, String pageIndex) {
    return _database.isBookmarkExist(bookPath, pageIndex);
  }

  @override
  Future<List<Bookmark>> filterBookmarks(String query) async {
    final references = await _database.getFilterReference(query);
    return references
        .map(
          (reference) => Bookmark(
        id: reference.id,
        title: reference.title,
        bookName: reference.bookName,
        bookPath: reference.bookPath,
        pageIndex: reference.navIndex,
        fileName: reference.fileName,
      ),
    )
        .toList();
  }
}

class BookmarkHistoryDataSource implements HistoryDataSource {
  BookmarkHistoryDataSource(this._database);

  final HistoryDatabase _database;

  @override
  Future<List<History>> getAllHistory() async {
    final historyList = await _database.getAllHistory();
    return historyList
        .map(
          (history) => History(
        id: history.id,
        title: history.title,
        bookName: history.bookName,
        bookPath: history.bookPath,
        pageIndex: history.navIndex,
      ),
    )
        .toList();
  }

  @override
  Future<void> deleteHistory(int id) async {
    await _database.deleteHistory(id);
  }

  @override
  Future<void> clearAllHistory() async {
    await _database.clearAllHistory();
  }
}
