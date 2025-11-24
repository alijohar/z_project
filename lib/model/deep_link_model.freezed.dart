// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeepLinkModel _$DeepLinkModelFromJson(Map<String, dynamic> json) {
  return _DeepLinkModel.fromJson(json);
}

/// @nodoc
mixin _$DeepLinkModel {
  String? get fileName =>
      throw _privateConstructorUsedError; // Absolute file name (can be null)
  int? get epubIndex =>
      throw _privateConstructorUsedError; // EPUB index/page number (can be null)
  String get epubName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeepLinkModelCopyWith<DeepLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLinkModelCopyWith<$Res> {
  factory $DeepLinkModelCopyWith(
          DeepLinkModel value, $Res Function(DeepLinkModel) then) =
      _$DeepLinkModelCopyWithImpl<$Res, DeepLinkModel>;
  @useResult
  $Res call({String? fileName, int? epubIndex, String epubName});
}

/// @nodoc
class _$DeepLinkModelCopyWithImpl<$Res, $Val extends DeepLinkModel>
    implements $DeepLinkModelCopyWith<$Res> {
  _$DeepLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? epubIndex = freezed,
    Object? epubName = null,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      epubIndex: freezed == epubIndex
          ? _value.epubIndex
          : epubIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      epubName: null == epubName
          ? _value.epubName
          : epubName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeepLinkModelImplCopyWith<$Res>
    implements $DeepLinkModelCopyWith<$Res> {
  factory _$$DeepLinkModelImplCopyWith(
          _$DeepLinkModelImpl value, $Res Function(_$DeepLinkModelImpl) then) =
      __$$DeepLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fileName, int? epubIndex, String epubName});
}

/// @nodoc
class __$$DeepLinkModelImplCopyWithImpl<$Res>
    extends _$DeepLinkModelCopyWithImpl<$Res, _$DeepLinkModelImpl>
    implements _$$DeepLinkModelImplCopyWith<$Res> {
  __$$DeepLinkModelImplCopyWithImpl(
      _$DeepLinkModelImpl _value, $Res Function(_$DeepLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? epubIndex = freezed,
    Object? epubName = null,
  }) {
    return _then(_$DeepLinkModelImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      epubIndex: freezed == epubIndex
          ? _value.epubIndex
          : epubIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      epubName: null == epubName
          ? _value.epubName
          : epubName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeepLinkModelImpl implements _DeepLinkModel {
  const _$DeepLinkModelImpl(
      {this.fileName, this.epubIndex, required this.epubName});

  factory _$DeepLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeepLinkModelImplFromJson(json);

  @override
  final String? fileName;
// Absolute file name (can be null)
  @override
  final int? epubIndex;
// EPUB index/page number (can be null)
  @override
  final String epubName;

  @override
  String toString() {
    return 'DeepLinkModel(fileName: $fileName, epubIndex: $epubIndex, epubName: $epubName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepLinkModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.epubIndex, epubIndex) ||
                other.epubIndex == epubIndex) &&
            (identical(other.epubName, epubName) ||
                other.epubName == epubName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, epubIndex, epubName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepLinkModelImplCopyWith<_$DeepLinkModelImpl> get copyWith =>
      __$$DeepLinkModelImplCopyWithImpl<_$DeepLinkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeepLinkModelImplToJson(
      this,
    );
  }
}

abstract class _DeepLinkModel implements DeepLinkModel {
  const factory _DeepLinkModel(
      {final String? fileName,
      final int? epubIndex,
      required final String epubName}) = _$DeepLinkModelImpl;

  factory _DeepLinkModel.fromJson(Map<String, dynamic> json) =
      _$DeepLinkModelImpl.fromJson;

  @override
  String? get fileName;
  @override // Absolute file name (can be null)
  int? get epubIndex;
  @override // EPUB index/page number (can be null)
  String get epubName;
  @override
  @JsonKey(ignore: true)
  _$$DeepLinkModelImplCopyWith<_$DeepLinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
