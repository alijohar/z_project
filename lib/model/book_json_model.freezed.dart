// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_json_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  int get epubName => throw _privateConstructorUsedError;
  String get title1 => throw _privateConstructorUsedError;
  String get title2 => throw _privateConstructorUsedError;
  Subtitle get subtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call({int epubName, String title1, String title2, Subtitle subtitle});

  $SubtitleCopyWith<$Res> get subtitle;
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubName = null,
    Object? title1 = null,
    Object? title2 = null,
    Object? subtitle = null,
  }) {
    return _then(_value.copyWith(
      epubName: null == epubName
          ? _value.epubName
          : epubName // ignore: cast_nullable_to_non_nullable
              as int,
      title1: null == title1
          ? _value.title1
          : title1 // ignore: cast_nullable_to_non_nullable
              as String,
      title2: null == title2
          ? _value.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Subtitle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubtitleCopyWith<$Res> get subtitle {
    return $SubtitleCopyWith<$Res>(_value.subtitle, (value) {
      return _then(_value.copyWith(subtitle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int epubName, String title1, String title2, Subtitle subtitle});

  @override
  $SubtitleCopyWith<$Res> get subtitle;
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubName = null,
    Object? title1 = null,
    Object? title2 = null,
    Object? subtitle = null,
  }) {
    return _then(_$BookImpl(
      epubName: null == epubName
          ? _value.epubName
          : epubName // ignore: cast_nullable_to_non_nullable
              as int,
      title1: null == title1
          ? _value.title1
          : title1 // ignore: cast_nullable_to_non_nullable
              as String,
      title2: null == title2
          ? _value.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Subtitle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.epubName,
      required this.title1,
      required this.title2,
      required this.subtitle});

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final int epubName;
  @override
  final String title1;
  @override
  final String title2;
  @override
  final Subtitle subtitle;

  @override
  String toString() {
    return 'Book(epubName: $epubName, title1: $title1, title2: $title2, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.epubName, epubName) ||
                other.epubName == epubName) &&
            (identical(other.title1, title1) || other.title1 == title1) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, epubName, title1, title2, subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final int epubName,
      required final String title1,
      required final String title2,
      required final Subtitle subtitle}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  int get epubName;
  @override
  String get title1;
  @override
  String get title2;
  @override
  Subtitle get subtitle;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subtitle _$SubtitleFromJson(Map<String, dynamic> json) {
  return _Subtitle.fromJson(json);
}

/// @nodoc
mixin _$Subtitle {
  String? get sub1 => throw _privateConstructorUsedError;
  String? get sub2 => throw _privateConstructorUsedError;
  String? get sub3 => throw _privateConstructorUsedError;
  String? get sub4 => throw _privateConstructorUsedError;
  String? get sub5 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtitleCopyWith<Subtitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleCopyWith<$Res> {
  factory $SubtitleCopyWith(Subtitle value, $Res Function(Subtitle) then) =
      _$SubtitleCopyWithImpl<$Res, Subtitle>;
  @useResult
  $Res call(
      {String? sub1, String? sub2, String? sub3, String? sub4, String? sub5});
}

/// @nodoc
class _$SubtitleCopyWithImpl<$Res, $Val extends Subtitle>
    implements $SubtitleCopyWith<$Res> {
  _$SubtitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub1 = freezed,
    Object? sub2 = freezed,
    Object? sub3 = freezed,
    Object? sub4 = freezed,
    Object? sub5 = freezed,
  }) {
    return _then(_value.copyWith(
      sub1: freezed == sub1
          ? _value.sub1
          : sub1 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub2: freezed == sub2
          ? _value.sub2
          : sub2 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub3: freezed == sub3
          ? _value.sub3
          : sub3 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub4: freezed == sub4
          ? _value.sub4
          : sub4 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub5: freezed == sub5
          ? _value.sub5
          : sub5 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtitleImplCopyWith<$Res>
    implements $SubtitleCopyWith<$Res> {
  factory _$$SubtitleImplCopyWith(
          _$SubtitleImpl value, $Res Function(_$SubtitleImpl) then) =
      __$$SubtitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sub1, String? sub2, String? sub3, String? sub4, String? sub5});
}

/// @nodoc
class __$$SubtitleImplCopyWithImpl<$Res>
    extends _$SubtitleCopyWithImpl<$Res, _$SubtitleImpl>
    implements _$$SubtitleImplCopyWith<$Res> {
  __$$SubtitleImplCopyWithImpl(
      _$SubtitleImpl _value, $Res Function(_$SubtitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub1 = freezed,
    Object? sub2 = freezed,
    Object? sub3 = freezed,
    Object? sub4 = freezed,
    Object? sub5 = freezed,
  }) {
    return _then(_$SubtitleImpl(
      sub1: freezed == sub1
          ? _value.sub1
          : sub1 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub2: freezed == sub2
          ? _value.sub2
          : sub2 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub3: freezed == sub3
          ? _value.sub3
          : sub3 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub4: freezed == sub4
          ? _value.sub4
          : sub4 // ignore: cast_nullable_to_non_nullable
              as String?,
      sub5: freezed == sub5
          ? _value.sub5
          : sub5 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtitleImpl implements _Subtitle {
  const _$SubtitleImpl({this.sub1, this.sub2, this.sub3, this.sub4, this.sub5});

  factory _$SubtitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtitleImplFromJson(json);

  @override
  final String? sub1;
  @override
  final String? sub2;
  @override
  final String? sub3;
  @override
  final String? sub4;
  @override
  final String? sub5;

  @override
  String toString() {
    return 'Subtitle(sub1: $sub1, sub2: $sub2, sub3: $sub3, sub4: $sub4, sub5: $sub5)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleImpl &&
            (identical(other.sub1, sub1) || other.sub1 == sub1) &&
            (identical(other.sub2, sub2) || other.sub2 == sub2) &&
            (identical(other.sub3, sub3) || other.sub3 == sub3) &&
            (identical(other.sub4, sub4) || other.sub4 == sub4) &&
            (identical(other.sub5, sub5) || other.sub5 == sub5));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sub1, sub2, sub3, sub4, sub5);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleImplCopyWith<_$SubtitleImpl> get copyWith =>
      __$$SubtitleImplCopyWithImpl<_$SubtitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtitleImplToJson(
      this,
    );
  }
}

abstract class _Subtitle implements Subtitle {
  const factory _Subtitle(
      {final String? sub1,
      final String? sub2,
      final String? sub3,
      final String? sub4,
      final String? sub5}) = _$SubtitleImpl;

  factory _Subtitle.fromJson(Map<String, dynamic> json) =
      _$SubtitleImpl.fromJson;

  @override
  String? get sub1;
  @override
  String? get sub2;
  @override
  String? get sub3;
  @override
  String? get sub4;
  @override
  String? get sub5;
  @override
  @JsonKey(ignore: true)
  _$$SubtitleImplCopyWith<_$SubtitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
