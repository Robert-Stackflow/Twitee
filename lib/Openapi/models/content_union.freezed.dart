// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentUnion _$ContentUnionFromJson(Map<String, dynamic> json) {
  return _ContentUnion.fromJson(json);
}

/// @nodoc
mixin _$ContentUnion {
  /// Serializes this ContentUnion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentUnionCopyWith<$Res> {
  factory $ContentUnionCopyWith(
          ContentUnion value, $Res Function(ContentUnion) then) =
      _$ContentUnionCopyWithImpl<$Res, ContentUnion>;
}

/// @nodoc
class _$ContentUnionCopyWithImpl<$Res, $Val extends ContentUnion>
    implements $ContentUnionCopyWith<$Res> {
  _$ContentUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContentUnionImplCopyWith<$Res> {
  factory _$$ContentUnionImplCopyWith(
          _$ContentUnionImpl value, $Res Function(_$ContentUnionImpl) then) =
      __$$ContentUnionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentUnionImplCopyWithImpl<$Res>
    extends _$ContentUnionCopyWithImpl<$Res, _$ContentUnionImpl>
    implements _$$ContentUnionImplCopyWith<$Res> {
  __$$ContentUnionImplCopyWithImpl(
      _$ContentUnionImpl _value, $Res Function(_$ContentUnionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ContentUnionImpl implements _ContentUnion {
  const _$ContentUnionImpl();

  factory _$ContentUnionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentUnionImplFromJson(json);

  @override
  String toString() {
    return 'ContentUnion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContentUnionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentUnionImplToJson(
      this,
    );
  }
}

abstract class _ContentUnion implements ContentUnion {
  const factory _ContentUnion() = _$ContentUnionImpl;

  factory _ContentUnion.fromJson(Map<String, dynamic> json) =
      _$ContentUnionImpl.fromJson;
}
