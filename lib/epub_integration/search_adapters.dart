import 'package:epub_search/epub_search.dart' as epub_search_package;
import 'package:shared_preferences/shared_preferences.dart';


import '../repository/json_repository.dart';

/// Creates the persistence used by `epub_search`.
epub_search_package.SearchPersistence createSearchPersistence({
  JsonRepository? jsonRepository,
}) {
  final repository = jsonRepository ?? JsonRepository();

  return epub_search_package.SearchPersistence(
    bookDataSource: SearchBookDataSource(repository),
    recentSearchesDataSource: AppRecentSearchesDataSource(),
  );
}

class SearchBookDataSource implements epub_search_package.BookDataSource {
  SearchBookDataSource(this._repository);

  final JsonRepository _repository;

  @override
  Future<List<epub_search_package.Book>> getBooks() async {
    final books = await _repository.fetchBooks();
    return books
        .map(
          (book) => epub_search_package.Book(
            title: book.title,
            description: book.description,
            image: book.image,
            epub: book.epub,
          ),
        )
        .toList();
  }
}

class AppRecentSearchesDataSource
    implements epub_search_package.RecentSearchesDataSource {
  static const String _key = 'recent_searches';
  static const int _maxRecentSearches = 10;

  @override
  Future<List<String>> getRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  @override
  Future<void> saveRecentSearches(List<String> searches) async {
    final prefs = await SharedPreferences.getInstance();
    final limitedSearches = searches.length > _maxRecentSearches
        ? searches.sublist(0, _maxRecentSearches)
        : searches;
    await prefs.setStringList(_key, limitedSearches);
  }

  @override
  Future<void> addRecentSearch(String term) async {
    if (term.trim().isEmpty) return;

    final prefs = await SharedPreferences.getInstance();
    final searches = prefs.getStringList(_key) ?? [];

    searches.remove(term);
    searches.insert(0, term);

    if (searches.length > _maxRecentSearches) {
      searches.removeRange(_maxRecentSearches, searches.length);
    }

    await prefs.setStringList(_key, searches);
  }

  @override
  Future<void> removeRecentSearch(String term) async {
    final prefs = await SharedPreferences.getInstance();
    final searches = prefs.getStringList(_key) ?? [];
    searches.remove(term);
    await prefs.setStringList(_key, searches);
  }
}
