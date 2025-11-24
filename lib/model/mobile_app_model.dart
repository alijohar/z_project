import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobile_app_model.freezed.dart';
part 'mobile_app_model.g.dart';

@freezed
class MobileAppsResponse with _$MobileAppsResponse {
  factory MobileAppsResponse({
    required bool success,
    required int statusCode,
    required List<MobileApp> data,
  }) = _MobileAppsResponse;

  factory MobileAppsResponse.fromJson(Map<String, dynamic> json) =>
      _$MobileAppsResponseFromJson(json);
}

@freezed
class MobileApp with _$MobileApp {
  factory MobileApp({
    required int id,
    required String appName,
    required String shortDescription,
    required String fullDescription,
    required String picPath,
    required int iosID,
    required String androidLink,
    required int showAds,
  }) = _MobileApp;

  factory MobileApp.fromJson(Map<String, dynamic> json) =>
      _$MobileAppFromJson(json);
} 