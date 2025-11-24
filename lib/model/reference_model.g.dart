// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferenceModelImpl _$$ReferenceModelImplFromJson(Map<String, dynamic> json) =>
    _$ReferenceModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      bookName: json['bookName'] as String,
      bookPath: json['bookPath'] as String,
      navIndex: json['navIndex'] as String,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$$ReferenceModelImplToJson(
        _$ReferenceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bookName': instance.bookName,
      'bookPath': instance.bookPath,
      'navIndex': instance.navIndex,
      'fileName': instance.fileName,
    };
