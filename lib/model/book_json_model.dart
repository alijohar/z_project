import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_json_model.freezed.dart';
part 'book_json_model.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required int epubName,
    required String title1,
    required String title2,
    required Subtitle subtitle,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class Subtitle with _$Subtitle {
  const factory Subtitle({
    String? sub1,
    String? sub2,
    String? sub3,
    String? sub4,
    String? sub5,
  }) = _Subtitle;

  factory Subtitle.fromJson(Map<String, dynamic> json) => _$SubtitleFromJson(json);
}
