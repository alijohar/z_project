import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_json_model.freezed.dart';
part 'book_json_model.g.dart';

@freezed
class LibraryCollection with _$LibraryCollection {
  const factory LibraryCollection({
    required String title,
    required String author,
    required String description,
    required String image,
    required String epub,
    @Default([]) List<Book> series,
  }) = _LibraryCollection;

  factory LibraryCollection.fromJson(Map<String, dynamic> json) =>
      _$LibraryCollectionFromJson(json);
}

@freezed
class Book with _$Book {
  const factory Book({
    required String title,
    required String description,
    required String image,
    required String epub,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
