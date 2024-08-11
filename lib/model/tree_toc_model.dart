import 'package:epub_parser/epub_parser.dart';

class TreeTocModel {

  TreeTocModel({
    required this.id,
    required this.bookTitle,
    required this.bookName,
    required this.childItems,
  });
  final int id;
  final String bookTitle;
  final String bookName;
  final List<TreeTocModel>? childItems;
}
class TreeNode {

  TreeNode(this.label, this.children);
  String label;
  List<TreeNode> children;
}

class EpubChaptersWithBookPath {

  EpubChaptersWithBookPath(this.epubChapter, this.bookPath);
  final EpubChapter epubChapter;
  final String bookPath;
}