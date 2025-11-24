// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryModelImpl _$$HistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HistoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      bookName: json['bookName'] as String,
      bookPath: json['bookPath'] as String,
      navIndex: json['navIndex'] as String,
    );

Map<String, dynamic> _$$HistoryModelImplToJson(_$HistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bookName': instance.bookName,
      'bookPath': instance.bookPath,
      'navIndex': instance.navIndex,
    };
