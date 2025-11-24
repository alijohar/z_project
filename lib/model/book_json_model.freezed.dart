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

LibraryCollection _$LibraryCollectionFromJson(Map<String, dynamic> json) {
  return _LibraryCollection.fromJson(json);
}

/// @nodoc
mixin _$LibraryCollection {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get epub => throw _privateConstructorUsedError;
  List<Book> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryCollectionCopyWith<LibraryCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryCollectionCopyWith<$Res> {
  factory $LibraryCollectionCopyWith(
          LibraryCollection value, $Res Function(LibraryCollection) then) =
      _$LibraryCollectionCopyWithImpl<$Res, LibraryCollection>;
  @useResult
  $Res call(
      {String title,
      String author,
      String description,
      String image,
      String epub,
      List<Book> series});
}

/// @nodoc
class _$LibraryCollectionCopyWithImpl<$Res, $Val extends LibraryCollection>
    implements $LibraryCollectionCopyWith<$Res> {
  _$LibraryCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? image = null,
    Object? epub = null,
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      epub: null == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryCollectionImplCopyWith<$Res>
    implements $LibraryCollectionCopyWith<$Res> {
  factory _$$LibraryCollectionImplCopyWith(_$LibraryCollectionImpl value,
          $Res Function(_$LibraryCollectionImpl) then) =
      __$$LibraryCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String author,
      String description,
      String image,
      String epub,
      List<Book> series});
}

/// @nodoc
class __$$LibraryCollectionImplCopyWithImpl<$Res>
    extends _$LibraryCollectionCopyWithImpl<$Res, _$LibraryCollectionImpl>
    implements _$$LibraryCollectionImplCopyWith<$Res> {
  __$$LibraryCollectionImplCopyWithImpl(_$LibraryCollectionImpl _value,
      $Res Function(_$LibraryCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? image = null,
    Object? epub = null,
    Object? series = null,
  }) {
    return _then(_$LibraryCollectionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      epub: null == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryCollectionImpl implements _LibraryCollection {
  const _$LibraryCollectionImpl(
      {required this.title,
      required this.author,
      required this.description,
      required this.image,
      required this.epub,
      final List<Book> series = const []})
      : _series = series;

  factory _$LibraryCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryCollectionImplFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String description;
  @override
  final String image;
  @override
  final String epub;
  final List<Book> _series;
  @override
  @JsonKey()
  List<Book> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'LibraryCollection(title: $title, author: $author, description: $description, image: $image, epub: $epub, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryCollectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.epub, epub) || other.epub == epub) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, author, description,
      image, epub, const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryCollectionImplCopyWith<_$LibraryCollectionImpl> get copyWith =>
      __$$LibraryCollectionImplCopyWithImpl<_$LibraryCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryCollectionImplToJson(
      this,
    );
  }
}

abstract class _LibraryCollection implements LibraryCollection {
  const factory _LibraryCollection(
      {required final String title,
      required final String author,
      required final String description,
      required final String image,
      required final String epub,
      final List<Book> series}) = _$LibraryCollectionImpl;

  factory _LibraryCollection.fromJson(Map<String, dynamic> json) =
      _$LibraryCollectionImpl.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String get description;
  @override
  String get image;
  @override
  String get epub;
  @override
  List<Book> get series;
  @override
  @JsonKey(ignore: true)
  _$$LibraryCollectionImplCopyWith<_$LibraryCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get epub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call({String title, String description, String image, String epub});
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
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? epub = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      epub: null == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String image, String epub});
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
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? epub = null,
  }) {
    return _then(_$BookImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      epub: null == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.title,
      required this.description,
      required this.image,
      required this.epub});

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String image;
  @override
  final String epub;

  @override
  String toString() {
    return 'Book(title: $title, description: $description, image: $image, epub: $epub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.epub, epub) || other.epub == epub));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, image, epub);

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
      {required final String title,
      required final String description,
      required final String image,
      required final String epub}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get image;
  @override
  String get epub;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
