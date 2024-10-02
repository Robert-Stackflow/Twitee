// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModuleItem _$ModuleItemFromJson(Map<String, dynamic> json) {
  return _ModuleItem.fromJson(json);
}

/// @nodoc
mixin _$ModuleItem {
  String get entryId => throw _privateConstructorUsedError;
  ModuleEntry get item => throw _privateConstructorUsedError;

  /// Serializes this ModuleItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModuleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleItemCopyWith<ModuleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleItemCopyWith<$Res> {
  factory $ModuleItemCopyWith(
          ModuleItem value, $Res Function(ModuleItem) then) =
      _$ModuleItemCopyWithImpl<$Res, ModuleItem>;
  @useResult
  $Res call({String entryId, ModuleEntry item});

  $ModuleEntryCopyWith<$Res> get item;
}

/// @nodoc
class _$ModuleItemCopyWithImpl<$Res, $Val extends ModuleItem>
    implements $ModuleItemCopyWith<$Res> {
  _$ModuleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      entryId: null == entryId
          ? _value.entryId
          : entryId // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ModuleEntry,
    ) as $Val);
  }

  /// Create a copy of ModuleItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModuleEntryCopyWith<$Res> get item {
    return $ModuleEntryCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModuleItemImplCopyWith<$Res>
    implements $ModuleItemCopyWith<$Res> {
  factory _$$ModuleItemImplCopyWith(
          _$ModuleItemImpl value, $Res Function(_$ModuleItemImpl) then) =
      __$$ModuleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String entryId, ModuleEntry item});

  @override
  $ModuleEntryCopyWith<$Res> get item;
}

/// @nodoc
class __$$ModuleItemImplCopyWithImpl<$Res>
    extends _$ModuleItemCopyWithImpl<$Res, _$ModuleItemImpl>
    implements _$$ModuleItemImplCopyWith<$Res> {
  __$$ModuleItemImplCopyWithImpl(
      _$ModuleItemImpl _value, $Res Function(_$ModuleItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? item = null,
  }) {
    return _then(_$ModuleItemImpl(
      entryId: null == entryId
          ? _value.entryId
          : entryId // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ModuleEntry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleItemImpl implements _ModuleItem {
  const _$ModuleItemImpl({required this.entryId, required this.item});

  factory _$ModuleItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleItemImplFromJson(json);

  @override
  final String entryId;
  @override
  final ModuleEntry item;

  @override
  String toString() {
    return 'ModuleItem(entryId: $entryId, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleItemImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entryId, item);

  /// Create a copy of ModuleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleItemImplCopyWith<_$ModuleItemImpl> get copyWith =>
      __$$ModuleItemImplCopyWithImpl<_$ModuleItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleItemImplToJson(
      this,
    );
  }
}

abstract class _ModuleItem implements ModuleItem {
  const factory _ModuleItem(
      {required final String entryId,
      required final ModuleEntry item}) = _$ModuleItemImpl;

  factory _ModuleItem.fromJson(Map<String, dynamic> json) =
      _$ModuleItemImpl.fromJson;

  @override
  String get entryId;
  @override
  ModuleEntry get item;

  /// Create a copy of ModuleItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleItemImplCopyWith<_$ModuleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
