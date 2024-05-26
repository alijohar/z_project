// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toc_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TocItemImpl _$$TocItemImplFromJson(Map<String, dynamic> json) =>
    _$TocItemImpl(
      level: (json['level'] as num).toInt(),
      key: json['key'] as String,
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num).toInt(),
      childs: (json['childs'] as List<dynamic>?)
              ?.map((e) => TocItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TocItemImplToJson(_$TocItemImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'key': instance.key,
      'title': instance.title,
      'id': instance.id,
      'parentId': instance.parentId,
      'childs': instance.childs,
    };
