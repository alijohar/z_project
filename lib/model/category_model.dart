class CategoryModel {

  CategoryModel({
    this.id,
    this.catId,
    required this.bookPath,
    this.bookName,
    this.bookCover,
    this.bookStyle,
    this.bookAuthor,
    this.description,
  });
  final int? id;
  final int? catId;
  final String? bookPath;
  final String? bookName;
  final String? bookCover;
  final String? bookStyle;
  final String? bookAuthor;
  final String? description;
}
