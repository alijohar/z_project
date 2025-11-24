import 'package:freezed_annotation/freezed_annotation.dart';

part 'deep_link_model.freezed.dart';
part 'deep_link_model.g.dart';

@freezed
class DeepLinkModel with _$DeepLinkModel {
  const factory DeepLinkModel({
    String? fileName, // Absolute file name (can be null)
    int? epubIndex, // EPUB index/page number (can be null)
    required String epubName, // EPUB book name/path (e.g., '1.epub')
  }) = _DeepLinkModel;

  factory DeepLinkModel.fromJson(Map<String, dynamic> json) =>
      _$DeepLinkModelFromJson(json);
}

