// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemModelImpl _$$ItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemModelImpl(
      title: json['title'] as String?,
      type: json['type'] as String?,
      picName: json['picName'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkTo: json['linkTo'] == null
          ? null
          : LinkTo.fromJson(json['linkTo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemModelImplToJson(_$ItemModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'picName': instance.picName,
      'items': instance.items,
      'linkTo': instance.linkTo,
    };

_$LinkToImpl _$$LinkToImplFromJson(Map<String, dynamic> json) => _$LinkToImpl(
      goto: json['goto'] as String?,
      key: json['key'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LinkToImplToJson(_$LinkToImpl instance) =>
    <String, dynamic>{
      'goto': instance.goto,
      'key': instance.key,
      'id': instance.id,
    };
