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
          ?.map((e) => SubItems.fromJson(e as Map<String, dynamic>))
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

_$SubItemsImpl _$$SubItemsImplFromJson(Map<String, dynamic> json) =>
    _$SubItemsImpl(
      title: json['title'] as String?,
      goto: json['goto'] as String?,
      key: json['key'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubItemsImplToJson(_$SubItemsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'goto': instance.goto,
      'key': instance.key,
      'id': instance.id,
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

_$DetailItemImpl _$$DetailItemImplFromJson(Map<String, dynamic> json) =>
    _$DetailItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailItemImplToJson(_$DetailItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'items': instance.items,
    };
