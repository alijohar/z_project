// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      epubName: (json['epubName'] as num).toInt(),
      title1: json['title1'] as String,
      title2: json['title2'] as String,
      subtitle: Subtitle.fromJson(json['subtitle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'epubName': instance.epubName,
      'title1': instance.title1,
      'title2': instance.title2,
      'subtitle': instance.subtitle,
    };

_$SubtitleImpl _$$SubtitleImplFromJson(Map<String, dynamic> json) =>
    _$SubtitleImpl(
      sub1: json['sub1'] as String?,
      sub2: json['sub2'] as String?,
      sub3: json['sub3'] as String?,
      sub4: json['sub4'] as String?,
      sub5: json['sub5'] as String?,
    );

Map<String, dynamic> _$$SubtitleImplToJson(_$SubtitleImpl instance) =>
    <String, dynamic>{
      'sub1': instance.sub1,
      'sub2': instance.sub2,
      'sub3': instance.sub3,
      'sub4': instance.sub4,
      'sub5': instance.sub5,
    };
