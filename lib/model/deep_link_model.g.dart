// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deep_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeepLinkModelImpl _$$DeepLinkModelImplFromJson(Map<String, dynamic> json) =>
    _$DeepLinkModelImpl(
      fileName: json['fileName'] as String?,
      epubIndex: (json['epubIndex'] as num?)?.toInt(),
      epubName: json['epubName'] as String,
    );

Map<String, dynamic> _$$DeepLinkModelImplToJson(_$DeepLinkModelImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'epubIndex': instance.epubIndex,
      'epubName': instance.epubName,
    };
