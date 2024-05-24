// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get picName => throw _privateConstructorUsedError;
  List<SubItems>? get items => throw _privateConstructorUsedError;
  LinkTo? get linkTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res, ItemModel>;
  @useResult
  $Res call(
      {String? title,
      String? type,
      String? picName,
      List<SubItems>? items,
      LinkTo? linkTo});

  $LinkToCopyWith<$Res>? get linkTo;
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res, $Val extends ItemModel>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? picName = freezed,
    Object? items = freezed,
    Object? linkTo = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      picName: freezed == picName
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SubItems>?,
      linkTo: freezed == linkTo
          ? _value.linkTo
          : linkTo // ignore: cast_nullable_to_non_nullable
              as LinkTo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkToCopyWith<$Res>? get linkTo {
    if (_value.linkTo == null) {
      return null;
    }

    return $LinkToCopyWith<$Res>(_value.linkTo!, (value) {
      return _then(_value.copyWith(linkTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemModelImplCopyWith<$Res>
    implements $ItemModelCopyWith<$Res> {
  factory _$$ItemModelImplCopyWith(
          _$ItemModelImpl value, $Res Function(_$ItemModelImpl) then) =
      __$$ItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? type,
      String? picName,
      List<SubItems>? items,
      LinkTo? linkTo});

  @override
  $LinkToCopyWith<$Res>? get linkTo;
}

/// @nodoc
class __$$ItemModelImplCopyWithImpl<$Res>
    extends _$ItemModelCopyWithImpl<$Res, _$ItemModelImpl>
    implements _$$ItemModelImplCopyWith<$Res> {
  __$$ItemModelImplCopyWithImpl(
      _$ItemModelImpl _value, $Res Function(_$ItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? picName = freezed,
    Object? items = freezed,
    Object? linkTo = freezed,
  }) {
    return _then(_$ItemModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      picName: freezed == picName
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SubItems>?,
      linkTo: freezed == linkTo
          ? _value.linkTo
          : linkTo // ignore: cast_nullable_to_non_nullable
              as LinkTo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemModelImpl implements _ItemModel {
  const _$ItemModelImpl(
      {this.title,
      this.type,
      this.picName,
      final List<SubItems>? items,
      this.linkTo})
      : _items = items;

  factory _$ItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? picName;
  final List<SubItems>? _items;
  @override
  List<SubItems>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LinkTo? linkTo;

  @override
  String toString() {
    return 'ItemModel(title: $title, type: $type, picName: $picName, items: $items, linkTo: $linkTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.picName, picName) || other.picName == picName) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.linkTo, linkTo) || other.linkTo == linkTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, type, picName,
      const DeepCollectionEquality().hash(_items), linkTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemModelImplCopyWith<_$ItemModelImpl> get copyWith =>
      __$$ItemModelImplCopyWithImpl<_$ItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemModelImplToJson(
      this,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {final String? title,
      final String? type,
      final String? picName,
      final List<SubItems>? items,
      final LinkTo? linkTo}) = _$ItemModelImpl;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$ItemModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get type;
  @override
  String? get picName;
  @override
  List<SubItems>? get items;
  @override
  LinkTo? get linkTo;
  @override
  @JsonKey(ignore: true)
  _$$ItemModelImplCopyWith<_$ItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubItems _$SubItemsFromJson(Map<String, dynamic> json) {
  return _SubItems.fromJson(json);
}

/// @nodoc
mixin _$SubItems {
  String? get title => throw _privateConstructorUsedError;
  String? get goto => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubItemsCopyWith<SubItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubItemsCopyWith<$Res> {
  factory $SubItemsCopyWith(SubItems value, $Res Function(SubItems) then) =
      _$SubItemsCopyWithImpl<$Res, SubItems>;
  @useResult
  $Res call({String? title, String? goto, String? key, int? id});
}

/// @nodoc
class _$SubItemsCopyWithImpl<$Res, $Val extends SubItems>
    implements $SubItemsCopyWith<$Res> {
  _$SubItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? goto = freezed,
    Object? key = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      goto: freezed == goto
          ? _value.goto
          : goto // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubItemsImplCopyWith<$Res>
    implements $SubItemsCopyWith<$Res> {
  factory _$$SubItemsImplCopyWith(
          _$SubItemsImpl value, $Res Function(_$SubItemsImpl) then) =
      __$$SubItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? goto, String? key, int? id});
}

/// @nodoc
class __$$SubItemsImplCopyWithImpl<$Res>
    extends _$SubItemsCopyWithImpl<$Res, _$SubItemsImpl>
    implements _$$SubItemsImplCopyWith<$Res> {
  __$$SubItemsImplCopyWithImpl(
      _$SubItemsImpl _value, $Res Function(_$SubItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? goto = freezed,
    Object? key = freezed,
    Object? id = freezed,
  }) {
    return _then(_$SubItemsImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      goto: freezed == goto
          ? _value.goto
          : goto // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubItemsImpl implements _SubItems {
  const _$SubItemsImpl({this.title, this.goto, this.key, this.id});

  factory _$SubItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubItemsImplFromJson(json);

  @override
  final String? title;
  @override
  final String? goto;
  @override
  final String? key;
  @override
  final int? id;

  @override
  String toString() {
    return 'SubItems(title: $title, goto: $goto, key: $key, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubItemsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.goto, goto) || other.goto == goto) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, goto, key, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubItemsImplCopyWith<_$SubItemsImpl> get copyWith =>
      __$$SubItemsImplCopyWithImpl<_$SubItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubItemsImplToJson(
      this,
    );
  }
}

abstract class _SubItems implements SubItems {
  const factory _SubItems(
      {final String? title,
      final String? goto,
      final String? key,
      final int? id}) = _$SubItemsImpl;

  factory _SubItems.fromJson(Map<String, dynamic> json) =
      _$SubItemsImpl.fromJson;

  @override
  String? get title;
  @override
  String? get goto;
  @override
  String? get key;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$SubItemsImplCopyWith<_$SubItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkTo _$LinkToFromJson(Map<String, dynamic> json) {
  return _LinkTo.fromJson(json);
}

/// @nodoc
mixin _$LinkTo {
  String? get goto => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkToCopyWith<LinkTo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkToCopyWith<$Res> {
  factory $LinkToCopyWith(LinkTo value, $Res Function(LinkTo) then) =
      _$LinkToCopyWithImpl<$Res, LinkTo>;
  @useResult
  $Res call({String? goto, String? key, int? id});
}

/// @nodoc
class _$LinkToCopyWithImpl<$Res, $Val extends LinkTo>
    implements $LinkToCopyWith<$Res> {
  _$LinkToCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goto = freezed,
    Object? key = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      goto: freezed == goto
          ? _value.goto
          : goto // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkToImplCopyWith<$Res> implements $LinkToCopyWith<$Res> {
  factory _$$LinkToImplCopyWith(
          _$LinkToImpl value, $Res Function(_$LinkToImpl) then) =
      __$$LinkToImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? goto, String? key, int? id});
}

/// @nodoc
class __$$LinkToImplCopyWithImpl<$Res>
    extends _$LinkToCopyWithImpl<$Res, _$LinkToImpl>
    implements _$$LinkToImplCopyWith<$Res> {
  __$$LinkToImplCopyWithImpl(
      _$LinkToImpl _value, $Res Function(_$LinkToImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goto = freezed,
    Object? key = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LinkToImpl(
      goto: freezed == goto
          ? _value.goto
          : goto // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkToImpl implements _LinkTo {
  const _$LinkToImpl({this.goto, this.key, this.id});

  factory _$LinkToImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkToImplFromJson(json);

  @override
  final String? goto;
  @override
  final String? key;
  @override
  final int? id;

  @override
  String toString() {
    return 'LinkTo(goto: $goto, key: $key, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkToImpl &&
            (identical(other.goto, goto) || other.goto == goto) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, goto, key, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkToImplCopyWith<_$LinkToImpl> get copyWith =>
      __$$LinkToImplCopyWithImpl<_$LinkToImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkToImplToJson(
      this,
    );
  }
}

abstract class _LinkTo implements LinkTo {
  const factory _LinkTo(
      {final String? goto, final String? key, final int? id}) = _$LinkToImpl;

  factory _LinkTo.fromJson(Map<String, dynamic> json) = _$LinkToImpl.fromJson;

  @override
  String? get goto;
  @override
  String? get key;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$LinkToImplCopyWith<_$LinkToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailItem _$DetailItemFromJson(Map<String, dynamic> json) {
  return _DetailItem.fromJson(json);
}

/// @nodoc
mixin _$DetailItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<ItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailItemCopyWith<DetailItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailItemCopyWith<$Res> {
  factory $DetailItemCopyWith(
          DetailItem value, $Res Function(DetailItem) then) =
      _$DetailItemCopyWithImpl<$Res, DetailItem>;
  @useResult
  $Res call({int id, String title, List<ItemModel> items});
}

/// @nodoc
class _$DetailItemCopyWithImpl<$Res, $Val extends DetailItem>
    implements $DetailItemCopyWith<$Res> {
  _$DetailItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailItemImplCopyWith<$Res>
    implements $DetailItemCopyWith<$Res> {
  factory _$$DetailItemImplCopyWith(
          _$DetailItemImpl value, $Res Function(_$DetailItemImpl) then) =
      __$$DetailItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, List<ItemModel> items});
}

/// @nodoc
class __$$DetailItemImplCopyWithImpl<$Res>
    extends _$DetailItemCopyWithImpl<$Res, _$DetailItemImpl>
    implements _$$DetailItemImplCopyWith<$Res> {
  __$$DetailItemImplCopyWithImpl(
      _$DetailItemImpl _value, $Res Function(_$DetailItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$DetailItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailItemImpl implements _DetailItem {
  const _$DetailItemImpl(
      {required this.id,
      required this.title,
      required final List<ItemModel> items})
      : _items = items;

  factory _$DetailItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<ItemModel> _items;
  @override
  List<ItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'DetailItem(id: $id, title: $title, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailItemImplCopyWith<_$DetailItemImpl> get copyWith =>
      __$$DetailItemImplCopyWithImpl<_$DetailItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailItemImplToJson(
      this,
    );
  }
}

abstract class _DetailItem implements DetailItem {
  const factory _DetailItem(
      {required final int id,
      required final String title,
      required final List<ItemModel> items}) = _$DetailItemImpl;

  factory _DetailItem.fromJson(Map<String, dynamic> json) =
      _$DetailItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  List<ItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$DetailItemImplCopyWith<_$DetailItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
