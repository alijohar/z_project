// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileAppsResponse _$MobileAppsResponseFromJson(Map<String, dynamic> json) {
  return _MobileAppsResponse.fromJson(json);
}

/// @nodoc
mixin _$MobileAppsResponse {
  bool get success => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  List<MobileApp> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileAppsResponseCopyWith<MobileAppsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileAppsResponseCopyWith<$Res> {
  factory $MobileAppsResponseCopyWith(
          MobileAppsResponse value, $Res Function(MobileAppsResponse) then) =
      _$MobileAppsResponseCopyWithImpl<$Res, MobileAppsResponse>;
  @useResult
  $Res call({bool success, int statusCode, List<MobileApp> data});
}

/// @nodoc
class _$MobileAppsResponseCopyWithImpl<$Res, $Val extends MobileAppsResponse>
    implements $MobileAppsResponseCopyWith<$Res> {
  _$MobileAppsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MobileApp>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileAppsResponseImplCopyWith<$Res>
    implements $MobileAppsResponseCopyWith<$Res> {
  factory _$$MobileAppsResponseImplCopyWith(_$MobileAppsResponseImpl value,
          $Res Function(_$MobileAppsResponseImpl) then) =
      __$$MobileAppsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int statusCode, List<MobileApp> data});
}

/// @nodoc
class __$$MobileAppsResponseImplCopyWithImpl<$Res>
    extends _$MobileAppsResponseCopyWithImpl<$Res, _$MobileAppsResponseImpl>
    implements _$$MobileAppsResponseImplCopyWith<$Res> {
  __$$MobileAppsResponseImplCopyWithImpl(_$MobileAppsResponseImpl _value,
      $Res Function(_$MobileAppsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? data = null,
  }) {
    return _then(_$MobileAppsResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MobileApp>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileAppsResponseImpl implements _MobileAppsResponse {
  _$MobileAppsResponseImpl(
      {required this.success,
      required this.statusCode,
      required final List<MobileApp> data})
      : _data = data;

  factory _$MobileAppsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileAppsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int statusCode;
  final List<MobileApp> _data;
  @override
  List<MobileApp> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MobileAppsResponse(success: $success, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileAppsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileAppsResponseImplCopyWith<_$MobileAppsResponseImpl> get copyWith =>
      __$$MobileAppsResponseImplCopyWithImpl<_$MobileAppsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileAppsResponseImplToJson(
      this,
    );
  }
}

abstract class _MobileAppsResponse implements MobileAppsResponse {
  factory _MobileAppsResponse(
      {required final bool success,
      required final int statusCode,
      required final List<MobileApp> data}) = _$MobileAppsResponseImpl;

  factory _MobileAppsResponse.fromJson(Map<String, dynamic> json) =
      _$MobileAppsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get statusCode;
  @override
  List<MobileApp> get data;
  @override
  @JsonKey(ignore: true)
  _$$MobileAppsResponseImplCopyWith<_$MobileAppsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileApp _$MobileAppFromJson(Map<String, dynamic> json) {
  return _MobileApp.fromJson(json);
}

/// @nodoc
mixin _$MobileApp {
  int get id => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;
  String get picPath => throw _privateConstructorUsedError;
  int get iosID => throw _privateConstructorUsedError;
  String get androidLink => throw _privateConstructorUsedError;
  int get showAds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileAppCopyWith<MobileApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileAppCopyWith<$Res> {
  factory $MobileAppCopyWith(MobileApp value, $Res Function(MobileApp) then) =
      _$MobileAppCopyWithImpl<$Res, MobileApp>;
  @useResult
  $Res call(
      {int id,
      String appName,
      String shortDescription,
      String fullDescription,
      String picPath,
      int iosID,
      String androidLink,
      int showAds});
}

/// @nodoc
class _$MobileAppCopyWithImpl<$Res, $Val extends MobileApp>
    implements $MobileAppCopyWith<$Res> {
  _$MobileAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? picPath = null,
    Object? iosID = null,
    Object? androidLink = null,
    Object? showAds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      picPath: null == picPath
          ? _value.picPath
          : picPath // ignore: cast_nullable_to_non_nullable
              as String,
      iosID: null == iosID
          ? _value.iosID
          : iosID // ignore: cast_nullable_to_non_nullable
              as int,
      androidLink: null == androidLink
          ? _value.androidLink
          : androidLink // ignore: cast_nullable_to_non_nullable
              as String,
      showAds: null == showAds
          ? _value.showAds
          : showAds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileAppImplCopyWith<$Res>
    implements $MobileAppCopyWith<$Res> {
  factory _$$MobileAppImplCopyWith(
          _$MobileAppImpl value, $Res Function(_$MobileAppImpl) then) =
      __$$MobileAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String appName,
      String shortDescription,
      String fullDescription,
      String picPath,
      int iosID,
      String androidLink,
      int showAds});
}

/// @nodoc
class __$$MobileAppImplCopyWithImpl<$Res>
    extends _$MobileAppCopyWithImpl<$Res, _$MobileAppImpl>
    implements _$$MobileAppImplCopyWith<$Res> {
  __$$MobileAppImplCopyWithImpl(
      _$MobileAppImpl _value, $Res Function(_$MobileAppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? picPath = null,
    Object? iosID = null,
    Object? androidLink = null,
    Object? showAds = null,
  }) {
    return _then(_$MobileAppImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      picPath: null == picPath
          ? _value.picPath
          : picPath // ignore: cast_nullable_to_non_nullable
              as String,
      iosID: null == iosID
          ? _value.iosID
          : iosID // ignore: cast_nullable_to_non_nullable
              as int,
      androidLink: null == androidLink
          ? _value.androidLink
          : androidLink // ignore: cast_nullable_to_non_nullable
              as String,
      showAds: null == showAds
          ? _value.showAds
          : showAds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileAppImpl implements _MobileApp {
  _$MobileAppImpl(
      {required this.id,
      required this.appName,
      required this.shortDescription,
      required this.fullDescription,
      required this.picPath,
      required this.iosID,
      required this.androidLink,
      required this.showAds});

  factory _$MobileAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileAppImplFromJson(json);

  @override
  final int id;
  @override
  final String appName;
  @override
  final String shortDescription;
  @override
  final String fullDescription;
  @override
  final String picPath;
  @override
  final int iosID;
  @override
  final String androidLink;
  @override
  final int showAds;

  @override
  String toString() {
    return 'MobileApp(id: $id, appName: $appName, shortDescription: $shortDescription, fullDescription: $fullDescription, picPath: $picPath, iosID: $iosID, androidLink: $androidLink, showAds: $showAds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileAppImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription) &&
            (identical(other.picPath, picPath) || other.picPath == picPath) &&
            (identical(other.iosID, iosID) || other.iosID == iosID) &&
            (identical(other.androidLink, androidLink) ||
                other.androidLink == androidLink) &&
            (identical(other.showAds, showAds) || other.showAds == showAds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, appName, shortDescription,
      fullDescription, picPath, iosID, androidLink, showAds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileAppImplCopyWith<_$MobileAppImpl> get copyWith =>
      __$$MobileAppImplCopyWithImpl<_$MobileAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileAppImplToJson(
      this,
    );
  }
}

abstract class _MobileApp implements MobileApp {
  factory _MobileApp(
      {required final int id,
      required final String appName,
      required final String shortDescription,
      required final String fullDescription,
      required final String picPath,
      required final int iosID,
      required final String androidLink,
      required final int showAds}) = _$MobileAppImpl;

  factory _MobileApp.fromJson(Map<String, dynamic> json) =
      _$MobileAppImpl.fromJson;

  @override
  int get id;
  @override
  String get appName;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  String get picPath;
  @override
  int get iosID;
  @override
  String get androidLink;
  @override
  int get showAds;
  @override
  @JsonKey(ignore: true)
  _$$MobileAppImplCopyWith<_$MobileAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
