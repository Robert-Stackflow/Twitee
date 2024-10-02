// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_content_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemContentUnion _$ItemContentUnionFromJson(Map<String, dynamic> json) {
  return _ItemContentUnion.fromJson(json);
}

/// @nodoc
mixin _$ItemContentUnion {
  /// Serializes this ItemContentUnion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemContentUnionCopyWith<$Res> {
  factory $ItemContentUnionCopyWith(
          ItemContentUnion value, $Res Function(ItemContentUnion) then) =
      _$ItemContentUnionCopyWithImpl<$Res, ItemContentUnion>;
}

/// @nodoc
class _$ItemContentUnionCopyWithImpl<$Res, $Val extends ItemContentUnion>
    implements $ItemContentUnionCopyWith<$Res> {
  _$ItemContentUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemContentUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ItemContentUnionImplCopyWith<$Res> {
  factory _$$ItemContentUnionImplCopyWith(_$ItemContentUnionImpl value,
          $Res Function(_$ItemContentUnionImpl) then) =
      __$$ItemContentUnionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemContentUnionImplCopyWithImpl<$Res>
    extends _$ItemContentUnionCopyWithImpl<$Res, _$ItemContentUnionImpl>
    implements _$$ItemContentUnionImplCopyWith<$Res> {
  __$$ItemContentUnionImplCopyWithImpl(_$ItemContentUnionImpl _value,
      $Res Function(_$ItemContentUnionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemContentUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ItemContentUnionImpl implements _ItemContentUnion {
  const _$ItemContentUnionImpl();

  factory _$ItemContentUnionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemContentUnionImplFromJson(json);

  @override
  String toString() {
    return 'ItemContentUnion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemContentUnionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemContentUnionImplToJson(
      this,
    );
  }
}

abstract class _ItemContentUnion implements ItemContentUnion {
  const factory _ItemContentUnion() = _$ItemContentUnionImpl;

  factory _ItemContentUnion.fromJson(Map<String, dynamic> json) =
      _$ItemContentUnionImpl.fromJson;
}
