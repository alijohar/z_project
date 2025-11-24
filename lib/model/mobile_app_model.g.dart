// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileAppsResponseImpl _$$MobileAppsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileAppsResponseImpl(
      success: json['success'] as bool,
      statusCode: (json['statusCode'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => MobileApp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MobileAppsResponseImplToJson(
        _$MobileAppsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

_$MobileAppImpl _$$MobileAppImplFromJson(Map<String, dynamic> json) =>
    _$MobileAppImpl(
      id: (json['id'] as num).toInt(),
      appName: json['appName'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
      picPath: json['picPath'] as String,
      iosID: (json['iosID'] as num).toInt(),
      androidLink: json['androidLink'] as String,
      showAds: (json['showAds'] as num).toInt(),
    );

Map<String, dynamic> _$$MobileAppImplToJson(_$MobileAppImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appName': instance.appName,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
      'picPath': instance.picPath,
      'iosID': instance.iosID,
      'androidLink': instance.androidLink,
      'showAds': instance.showAds,
    };
