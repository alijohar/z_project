import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    String? title,
    String? type,
    String? picName,
    List<SubItems>? items,
    LinkTo? linkTo,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}

@freezed
class SubItems with _$SubItems {
  const factory SubItems({
    String? title,
    String? goto,
    String? key,
    int? id,
  }) = _SubItems;

  factory SubItems.fromJson(Map<String, dynamic> json) => _$SubItemsFromJson(json);
}

@freezed
class LinkTo with _$LinkTo {
  const factory LinkTo({
    String? goto,
    String? key,
    int? id,
  }) = _LinkTo;

  factory LinkTo.fromJson(Map<String, dynamic> json) => _$LinkToFromJson(json);
}
