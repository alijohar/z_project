import 'package:freezed_annotation/freezed_annotation.dart';

part 'toc_item.freezed.dart';
part 'toc_item.g.dart';

@freezed
class TocItem with _$TocItem {
  const factory TocItem({
    required int level,
    required String key,
    required String title,
    required int id,
    required int parentId,
    @Default([]) List<TocItem>? childs,
  }) = _TocItem;

  factory TocItem.fromJson(Map<String, dynamic> json) => _$TocItemFromJson(json);
}
