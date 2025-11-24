// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferenceModel _$ReferenceModelFromJson(Map<String, dynamic> json) {
  return _ReferenceModel.fromJson(json);
}

/// @nodoc
mixin _$ReferenceModel {
  int? get id =>
      throw _privateConstructorUsedError; // Nullable for auto-generated IDs
  String get title => throw _privateConstructorUsedError;
  String get bookName => throw _privateConstructorUsedError;
  String get bookPath => throw _privateConstructorUsedError;
  String get navIndex => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceModelCopyWith<ReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceModelCopyWith<$Res> {
  factory $ReferenceModelCopyWith(
          ReferenceModel value, $Res Function(ReferenceModel) then) =
      _$ReferenceModelCopyWithImpl<$Res, ReferenceModel>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String bookName,
      String bookPath,
      String navIndex,
      String? fileName});
}

/// @nodoc
class _$ReferenceModelCopyWithImpl<$Res, $Val extends ReferenceModel>
    implements $ReferenceModelCopyWith<$Res> {
  _$ReferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? bookName = null,
    Object? bookPath = null,
    Object? navIndex = null,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      bookPath: null == bookPath
          ? _value.bookPath
          : bookPath // ignore: cast_nullable_to_non_nullable
              as String,
      navIndex: null == navIndex
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceModelImplCopyWith<$Res>
    implements $ReferenceModelCopyWith<$Res> {
  factory _$$ReferenceModelImplCopyWith(_$ReferenceModelImpl value,
          $Res Function(_$ReferenceModelImpl) then) =
      __$$ReferenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String bookName,
      String bookPath,
      String navIndex,
      String? fileName});
}

/// @nodoc
class __$$ReferenceModelImplCopyWithImpl<$Res>
    extends _$ReferenceModelCopyWithImpl<$Res, _$ReferenceModelImpl>
    implements _$$ReferenceModelImplCopyWith<$Res> {
  __$$ReferenceModelImplCopyWithImpl(
      _$ReferenceModelImpl _value, $Res Function(_$ReferenceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? bookName = null,
    Object? bookPath = null,
    Object? navIndex = null,
    Object? fileName = freezed,
  }) {
    return _then(_$ReferenceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      bookPath: null == bookPath
          ? _value.bookPath
          : bookPath // ignore: cast_nullable_to_non_nullable
              as String,
      navIndex: null == navIndex
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceModelImpl implements _ReferenceModel {
  const _$ReferenceModelImpl(
      {this.id,
      required this.title,
      required this.bookName,
      required this.bookPath,
      required this.navIndex,
      this.fileName});

  factory _$ReferenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceModelImplFromJson(json);

  @override
  final int? id;
// Nullable for auto-generated IDs
  @override
  final String title;
  @override
  final String bookName;
  @override
  final String bookPath;
  @override
  final String navIndex;
  @override
  final String? fileName;

  @override
  String toString() {
    return 'ReferenceModel(id: $id, title: $title, bookName: $bookName, bookPath: $bookPath, navIndex: $navIndex, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bookName, bookName) ||
                other.bookName == bookName) &&
            (identical(other.bookPath, bookPath) ||
                other.bookPath == bookPath) &&
            (identical(other.navIndex, navIndex) ||
                other.navIndex == navIndex) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, bookName, bookPath, navIndex, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceModelImplCopyWith<_$ReferenceModelImpl> get copyWith =>
      __$$ReferenceModelImplCopyWithImpl<_$ReferenceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceModelImplToJson(
      this,
    );
  }
}

abstract class _ReferenceModel implements ReferenceModel {
  const factory _ReferenceModel(
      {final int? id,
      required final String title,
      required final String bookName,
      required final String bookPath,
      required final String navIndex,
      final String? fileName}) = _$ReferenceModelImpl;

  factory _ReferenceModel.fromJson(Map<String, dynamic> json) =
      _$ReferenceModelImpl.fromJson;

  @override
  int? get id;
  @override // Nullable for auto-generated IDs
  String get title;
  @override
  String get bookName;
  @override
  String get bookPath;
  @override
  String get navIndex;
  @override
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceModelImplCopyWith<_$ReferenceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
