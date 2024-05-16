// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_viewer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpubViewerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubViewerStateCopyWith<$Res> {
  factory $EpubViewerStateCopyWith(
          EpubViewerState value, $Res Function(EpubViewerState) then) =
      _$EpubViewerStateCopyWithImpl<$Res, EpubViewerState>;
}

/// @nodoc
class _$EpubViewerStateCopyWithImpl<$Res, $Val extends EpubViewerState>
    implements $EpubViewerStateCopyWith<$Res> {
  _$EpubViewerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EpubViewerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EpubViewerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EpubViewerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EpubViewerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> content, String epubTitle, List<EpubChapter>? tocTreeList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? epubTitle = null,
    Object? tocTreeList = freezed,
  }) {
    return _then(_$LoadedImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
      epubTitle: null == epubTitle
          ? _value.epubTitle
          : epubTitle // ignore: cast_nullable_to_non_nullable
              as String,
      tocTreeList: freezed == tocTreeList
          ? _value._tocTreeList
          : tocTreeList // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter>?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<String> content,
      required this.epubTitle,
      final List<EpubChapter>? tocTreeList})
      : _content = content,
        _tocTreeList = tocTreeList;

  final List<String> _content;
  @override
  List<String> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final String epubTitle;
  final List<EpubChapter>? _tocTreeList;
  @override
  List<EpubChapter>? get tocTreeList {
    final value = _tocTreeList;
    if (value == null) return null;
    if (_tocTreeList is EqualUnmodifiableListView) return _tocTreeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpubViewerState.loaded(content: $content, epubTitle: $epubTitle, tocTreeList: $tocTreeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.epubTitle, epubTitle) ||
                other.epubTitle == epubTitle) &&
            const DeepCollectionEquality()
                .equals(other._tocTreeList, _tocTreeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      epubTitle,
      const DeepCollectionEquality().hash(_tocTreeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return loaded(content, epubTitle, tocTreeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return loaded?.call(content, epubTitle, tocTreeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(content, epubTitle, tocTreeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EpubViewerState {
  const factory _Loaded(
      {required final List<String> content,
      required final String epubTitle,
      final List<EpubChapter>? tocTreeList}) = _$LoadedImpl;

  List<String> get content;
  String get epubTitle;
  List<EpubChapter>? get tocTreeList;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$errorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$errorImpl implements _error {
  const _$errorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'EpubViewerState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements EpubViewerState {
  const factory _error({required final String error}) = _$errorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageChangedImplCopyWith<$Res> {
  factory _$$PageChangedImplCopyWith(
          _$PageChangedImpl value, $Res Function(_$PageChangedImpl) then) =
      __$$PageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber});
}

/// @nodoc
class __$$PageChangedImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$PageChangedImpl>
    implements _$$PageChangedImplCopyWith<$Res> {
  __$$PageChangedImplCopyWithImpl(
      _$PageChangedImpl _value, $Res Function(_$PageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
  }) {
    return _then(_$PageChangedImpl(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PageChangedImpl implements _PageChanged {
  const _$PageChangedImpl({this.pageNumber});

  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'EpubViewerState.pageChanged(pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangedImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      __$$PageChangedImplCopyWithImpl<_$PageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return pageChanged(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return pageChanged?.call(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements EpubViewerState {
  const factory _PageChanged({final int? pageNumber}) = _$PageChangedImpl;

  int? get pageNumber;
  @JsonKey(ignore: true)
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StyleChangedImplCopyWith<$Res> {
  factory _$$StyleChangedImplCopyWith(
          _$StyleChangedImpl value, $Res Function(_$StyleChangedImpl) then) =
      __$$StyleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FontSizeCustom? fontSize,
      LineHeightCustom? lineHeight,
      FontFamily? fontFamily});
}

/// @nodoc
class __$$StyleChangedImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$StyleChangedImpl>
    implements _$$StyleChangedImplCopyWith<$Res> {
  __$$StyleChangedImplCopyWithImpl(
      _$StyleChangedImpl _value, $Res Function(_$StyleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontSize = freezed,
    Object? lineHeight = freezed,
    Object? fontFamily = freezed,
  }) {
    return _then(_$StyleChangedImpl(
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as FontSizeCustom?,
      lineHeight: freezed == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as LineHeightCustom?,
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as FontFamily?,
    ));
  }
}

/// @nodoc

class _$StyleChangedImpl implements _StyleChanged {
  const _$StyleChangedImpl({this.fontSize, this.lineHeight, this.fontFamily});

  @override
  final FontSizeCustom? fontSize;
  @override
  final LineHeightCustom? lineHeight;
  @override
  final FontFamily? fontFamily;

  @override
  String toString() {
    return 'EpubViewerState.styleChanged(fontSize: $fontSize, lineHeight: $lineHeight, fontFamily: $fontFamily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyleChangedImpl &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.lineHeight, lineHeight) ||
                other.lineHeight == lineHeight) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fontSize, lineHeight, fontFamily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StyleChangedImplCopyWith<_$StyleChangedImpl> get copyWith =>
      __$$StyleChangedImplCopyWithImpl<_$StyleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return styleChanged(fontSize, lineHeight, fontFamily);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return styleChanged?.call(fontSize, lineHeight, fontFamily);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (styleChanged != null) {
      return styleChanged(fontSize, lineHeight, fontFamily);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return styleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return styleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (styleChanged != null) {
      return styleChanged(this);
    }
    return orElse();
  }
}

abstract class _StyleChanged implements EpubViewerState {
  const factory _StyleChanged(
      {final FontSizeCustom? fontSize,
      final LineHeightCustom? lineHeight,
      final FontFamily? fontFamily}) = _$StyleChangedImpl;

  FontSizeCustom? get fontSize;
  LineHeightCustom? get lineHeight;
  FontFamily? get fontFamily;
  @JsonKey(ignore: true)
  _$$StyleChangedImplCopyWith<_$StyleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkAddedImplCopyWith<$Res> {
  factory _$$BookmarkAddedImplCopyWith(
          _$BookmarkAddedImpl value, $Res Function(_$BookmarkAddedImpl) then) =
      __$$BookmarkAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? status});
}

/// @nodoc
class __$$BookmarkAddedImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$BookmarkAddedImpl>
    implements _$$BookmarkAddedImplCopyWith<$Res> {
  __$$BookmarkAddedImplCopyWithImpl(
      _$BookmarkAddedImpl _value, $Res Function(_$BookmarkAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$BookmarkAddedImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BookmarkAddedImpl implements _BookmarkAdded {
  const _$BookmarkAddedImpl({this.status});

  @override
  final int? status;

  @override
  String toString() {
    return 'EpubViewerState.bookmarkAdded(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkAddedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkAddedImplCopyWith<_$BookmarkAddedImpl> get copyWith =>
      __$$BookmarkAddedImplCopyWithImpl<_$BookmarkAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return bookmarkAdded(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return bookmarkAdded?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (bookmarkAdded != null) {
      return bookmarkAdded(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return bookmarkAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return bookmarkAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (bookmarkAdded != null) {
      return bookmarkAdded(this);
    }
    return orElse();
  }
}

abstract class _BookmarkAdded implements EpubViewerState {
  const factory _BookmarkAdded({final int? status}) = _$BookmarkAddedImpl;

  int? get status;
  @JsonKey(ignore: true)
  _$$BookmarkAddedImplCopyWith<_$BookmarkAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultsFoundImplCopyWith<$Res> {
  factory _$$SearchResultsFoundImplCopyWith(_$SearchResultsFoundImpl value,
          $Res Function(_$SearchResultsFoundImpl) then) =
      __$$SearchResultsFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchModel> searchResults});
}

/// @nodoc
class __$$SearchResultsFoundImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$SearchResultsFoundImpl>
    implements _$$SearchResultsFoundImplCopyWith<$Res> {
  __$$SearchResultsFoundImplCopyWithImpl(_$SearchResultsFoundImpl _value,
      $Res Function(_$SearchResultsFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResults = null,
  }) {
    return _then(_$SearchResultsFoundImpl(
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
    ));
  }
}

/// @nodoc

class _$SearchResultsFoundImpl implements _SearchResultsFound {
  const _$SearchResultsFoundImpl(
      {required final List<SearchModel> searchResults})
      : _searchResults = searchResults;

  final List<SearchModel> _searchResults;
  @override
  List<SearchModel> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString() {
    return 'EpubViewerState.searchResultsFound(searchResults: $searchResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultsFoundImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsFoundImplCopyWith<_$SearchResultsFoundImpl> get copyWith =>
      __$$SearchResultsFoundImplCopyWithImpl<_$SearchResultsFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return searchResultsFound(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return searchResultsFound?.call(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (searchResultsFound != null) {
      return searchResultsFound(searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return searchResultsFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return searchResultsFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (searchResultsFound != null) {
      return searchResultsFound(this);
    }
    return orElse();
  }
}

abstract class _SearchResultsFound implements EpubViewerState {
  const factory _SearchResultsFound(
          {required final List<SearchModel> searchResults}) =
      _$SearchResultsFoundImpl;

  List<SearchModel> get searchResults;
  @JsonKey(ignore: true)
  _$$SearchResultsFoundImplCopyWith<_$SearchResultsFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkPresentImplCopyWith<$Res> {
  factory _$$BookmarkPresentImplCopyWith(_$BookmarkPresentImpl value,
          $Res Function(_$BookmarkPresentImpl) then) =
      __$$BookmarkPresentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkPresentImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$BookmarkPresentImpl>
    implements _$$BookmarkPresentImplCopyWith<$Res> {
  __$$BookmarkPresentImplCopyWithImpl(
      _$BookmarkPresentImpl _value, $Res Function(_$BookmarkPresentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookmarkPresentImpl implements _BookmarkPresent {
  const _$BookmarkPresentImpl();

  @override
  String toString() {
    return 'EpubViewerState.bookmarkPresent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkPresentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return bookmarkPresent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return bookmarkPresent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (bookmarkPresent != null) {
      return bookmarkPresent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return bookmarkPresent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return bookmarkPresent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (bookmarkPresent != null) {
      return bookmarkPresent(this);
    }
    return orElse();
  }
}

abstract class _BookmarkPresent implements EpubViewerState {
  const factory _BookmarkPresent() = _$BookmarkPresentImpl;
}

/// @nodoc
abstract class _$$BookmarkAbsentImplCopyWith<$Res> {
  factory _$$BookmarkAbsentImplCopyWith(_$BookmarkAbsentImpl value,
          $Res Function(_$BookmarkAbsentImpl) then) =
      __$$BookmarkAbsentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkAbsentImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$BookmarkAbsentImpl>
    implements _$$BookmarkAbsentImplCopyWith<$Res> {
  __$$BookmarkAbsentImplCopyWithImpl(
      _$BookmarkAbsentImpl _value, $Res Function(_$BookmarkAbsentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookmarkAbsentImpl implements _BookmarkAbsent {
  const _$BookmarkAbsentImpl();

  @override
  String toString() {
    return 'EpubViewerState.bookmarkAbsent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkAbsentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return bookmarkAbsent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return bookmarkAbsent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (bookmarkAbsent != null) {
      return bookmarkAbsent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return bookmarkAbsent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return bookmarkAbsent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (bookmarkAbsent != null) {
      return bookmarkAbsent(this);
    }
    return orElse();
  }
}

abstract class _BookmarkAbsent implements EpubViewerState {
  const factory _BookmarkAbsent() = _$BookmarkAbsentImpl;
}

/// @nodoc
abstract class _$$ContentHighlightedImplCopyWith<$Res> {
  factory _$$ContentHighlightedImplCopyWith(_$ContentHighlightedImpl value,
          $Res Function(_$ContentHighlightedImpl) then) =
      __$$ContentHighlightedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> content, int highlightedIndex});
}

/// @nodoc
class __$$ContentHighlightedImplCopyWithImpl<$Res>
    extends _$EpubViewerStateCopyWithImpl<$Res, _$ContentHighlightedImpl>
    implements _$$ContentHighlightedImplCopyWith<$Res> {
  __$$ContentHighlightedImplCopyWithImpl(_$ContentHighlightedImpl _value,
      $Res Function(_$ContentHighlightedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? highlightedIndex = null,
  }) {
    return _then(_$ContentHighlightedImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlightedIndex: null == highlightedIndex
          ? _value.highlightedIndex
          : highlightedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ContentHighlightedImpl implements _ContentHighlighted {
  const _$ContentHighlightedImpl(
      {required final List<String> content, required this.highlightedIndex})
      : _content = content;

  final List<String> _content;
  @override
  List<String> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int highlightedIndex;

  @override
  String toString() {
    return 'EpubViewerState.contentHighlighted(content: $content, highlightedIndex: $highlightedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentHighlightedImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.highlightedIndex, highlightedIndex) ||
                other.highlightedIndex == highlightedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_content), highlightedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentHighlightedImplCopyWith<_$ContentHighlightedImpl> get copyWith =>
      __$$ContentHighlightedImplCopyWithImpl<_$ContentHighlightedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)
        loaded,
    required TResult Function(String error) error,
    required TResult Function(int? pageNumber) pageChanged,
    required TResult Function(FontSizeCustom? fontSize,
            LineHeightCustom? lineHeight, FontFamily? fontFamily)
        styleChanged,
    required TResult Function(int? status) bookmarkAdded,
    required TResult Function(List<SearchModel> searchResults)
        searchResultsFound,
    required TResult Function() bookmarkPresent,
    required TResult Function() bookmarkAbsent,
    required TResult Function(List<String> content, int highlightedIndex)
        contentHighlighted,
  }) {
    return contentHighlighted(content, highlightedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult? Function(String error)? error,
    TResult? Function(int? pageNumber)? pageChanged,
    TResult? Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult? Function(int? status)? bookmarkAdded,
    TResult? Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult? Function()? bookmarkPresent,
    TResult? Function()? bookmarkAbsent,
    TResult? Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
  }) {
    return contentHighlighted?.call(content, highlightedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> content, String epubTitle,
            List<EpubChapter>? tocTreeList)?
        loaded,
    TResult Function(String error)? error,
    TResult Function(int? pageNumber)? pageChanged,
    TResult Function(FontSizeCustom? fontSize, LineHeightCustom? lineHeight,
            FontFamily? fontFamily)?
        styleChanged,
    TResult Function(int? status)? bookmarkAdded,
    TResult Function(List<SearchModel> searchResults)? searchResultsFound,
    TResult Function()? bookmarkPresent,
    TResult Function()? bookmarkAbsent,
    TResult Function(List<String> content, int highlightedIndex)?
        contentHighlighted,
    required TResult orElse(),
  }) {
    if (contentHighlighted != null) {
      return contentHighlighted(content, highlightedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_StyleChanged value) styleChanged,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_SearchResultsFound value) searchResultsFound,
    required TResult Function(_BookmarkPresent value) bookmarkPresent,
    required TResult Function(_BookmarkAbsent value) bookmarkAbsent,
    required TResult Function(_ContentHighlighted value) contentHighlighted,
  }) {
    return contentHighlighted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_StyleChanged value)? styleChanged,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_SearchResultsFound value)? searchResultsFound,
    TResult? Function(_BookmarkPresent value)? bookmarkPresent,
    TResult? Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult? Function(_ContentHighlighted value)? contentHighlighted,
  }) {
    return contentHighlighted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_StyleChanged value)? styleChanged,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_SearchResultsFound value)? searchResultsFound,
    TResult Function(_BookmarkPresent value)? bookmarkPresent,
    TResult Function(_BookmarkAbsent value)? bookmarkAbsent,
    TResult Function(_ContentHighlighted value)? contentHighlighted,
    required TResult orElse(),
  }) {
    if (contentHighlighted != null) {
      return contentHighlighted(this);
    }
    return orElse();
  }
}

abstract class _ContentHighlighted implements EpubViewerState {
  const factory _ContentHighlighted(
      {required final List<String> content,
      required final int highlightedIndex}) = _$ContentHighlightedImpl;

  List<String> get content;
  int get highlightedIndex;
  @JsonKey(ignore: true)
  _$$ContentHighlightedImplCopyWith<_$ContentHighlightedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
