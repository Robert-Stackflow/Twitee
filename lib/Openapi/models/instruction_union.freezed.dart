// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instruction_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstructionUnion _$InstructionUnionFromJson(Map<String, dynamic> json) {
  return _InstructionUnion.fromJson(json);
}

/// @nodoc
mixin _$InstructionUnion {
  /// Serializes this InstructionUnion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionUnionCopyWith<$Res> {
  factory $InstructionUnionCopyWith(
          InstructionUnion value, $Res Function(InstructionUnion) then) =
      _$InstructionUnionCopyWithImpl<$Res, InstructionUnion>;
}

/// @nodoc
class _$InstructionUnionCopyWithImpl<$Res, $Val extends InstructionUnion>
    implements $InstructionUnionCopyWith<$Res> {
  _$InstructionUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstructionUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InstructionUnionImplCopyWith<$Res> {
  factory _$$InstructionUnionImplCopyWith(_$InstructionUnionImpl value,
          $Res Function(_$InstructionUnionImpl) then) =
      __$$InstructionUnionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InstructionUnionImplCopyWithImpl<$Res>
    extends _$InstructionUnionCopyWithImpl<$Res, _$InstructionUnionImpl>
    implements _$$InstructionUnionImplCopyWith<$Res> {
  __$$InstructionUnionImplCopyWithImpl(_$InstructionUnionImpl _value,
      $Res Function(_$InstructionUnionImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstructionUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InstructionUnionImpl implements _InstructionUnion {
  const _$InstructionUnionImpl();

  factory _$InstructionUnionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionUnionImplFromJson(json);

  @override
  String toString() {
    return 'InstructionUnion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InstructionUnionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionUnionImplToJson(
      this,
    );
  }
}

abstract class _InstructionUnion implements InstructionUnion {
  const factory _InstructionUnion() = _$InstructionUnionImpl;

  factory _InstructionUnion.fromJson(Map<String, dynamic> json) =
      _$InstructionUnionImpl.fromJson;
}
