
class SearchModel {
  SearchModel({
    this.searchedWord,
    this.bookAddress,
    this.bookTitle,
    this.pageId,
    required this.pageIndex,
    required this.spanna,
    required this.searchCount,
  });

  final String? bookAddress;
  final String? bookTitle;
  final String? searchedWord;
  final String? pageId;
  final String? spanna;
  final int pageIndex;
  final int searchCount;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SearchModel) return false;
    return bookAddress == other.bookAddress && pageIndex == other.pageIndex;
  }

  @override
  int get hashCode => Object.hash(bookAddress, pageIndex);
}


class SearchHighlight {

  SearchHighlight(this.searchHighlight, this.index);
  final String searchHighlight;
  final SearchIndex index;
}

class SearchIndex {

  SearchIndex(this.startIndex, this.lastIndex);
   int startIndex;
   int lastIndex;
}

class MySearcher {
  SearchIndex? searchInString(String? pageString, String sw, int i) {
    // Implement your search logic here
    // Replace this with actual search logic
    return null;
  }
}


