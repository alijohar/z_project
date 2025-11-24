// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryCollectionImpl _$$LibraryCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryCollectionImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      epub: json['epub'] as String,
      series: (json['series'] as List<dynamic>?)
              ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LibraryCollectionImplToJson(
        _$LibraryCollectionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'image': instance.image,
      'epub': instance.epub,
      'series': instance.series,
    };

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      epub: json['epub'] as String,
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'epub': instance.epub,
    };
