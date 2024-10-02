// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_control.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationControl _$ConversationControlFromJson(Map<String, dynamic> json) {
  return _ConversationControl.fromJson(json);
}

/// @nodoc
mixin _$ConversationControl {
  ConversationControlMode get mode => throw _privateConstructorUsedError;

  /// Serializes this ConversationControl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationControlCopyWith<ConversationControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationControlCopyWith<$Res> {
  factory $ConversationControlCopyWith(
          ConversationControl value, $Res Function(ConversationControl) then) =
      _$ConversationControlCopyWithImpl<$Res, ConversationControl>;
  @useResult
  $Res call({ConversationControlMode mode});
}

/// @nodoc
class _$ConversationControlCopyWithImpl<$Res, $Val extends ConversationControl>
    implements $ConversationControlCopyWith<$Res> {
  _$ConversationControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ConversationControlMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationControlImplCopyWith<$Res>
    implements $ConversationControlCopyWith<$Res> {
  factory _$$ConversationControlImplCopyWith(_$ConversationControlImpl value,
          $Res Function(_$ConversationControlImpl) then) =
      __$$ConversationControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationControlMode mode});
}

/// @nodoc
class __$$ConversationControlImplCopyWithImpl<$Res>
    extends _$ConversationControlCopyWithImpl<$Res, _$ConversationControlImpl>
    implements _$$ConversationControlImplCopyWith<$Res> {
  __$$ConversationControlImplCopyWithImpl(_$ConversationControlImpl _value,
      $Res Function(_$ConversationControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$ConversationControlImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ConversationControlMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationControlImpl implements _ConversationControl {
  const _$ConversationControlImpl({required this.mode});

  factory _$ConversationControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationControlImplFromJson(json);

  @override
  final ConversationControlMode mode;

  @override
  String toString() {
    return 'ConversationControl(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationControlImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of ConversationControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationControlImplCopyWith<_$ConversationControlImpl> get copyWith =>
      __$$ConversationControlImplCopyWithImpl<_$ConversationControlImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationControlImplToJson(
      this,
    );
  }
}

abstract class _ConversationControl implements ConversationControl {
  const factory _ConversationControl(
          {required final ConversationControlMode mode}) =
      _$ConversationControlImpl;

  factory _ConversationControl.fromJson(Map<String, dynamic> json) =
      _$ConversationControlImpl.fromJson;

  @override
  ConversationControlMode get mode;

  /// Create a copy of ConversationControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationControlImplCopyWith<_$ConversationControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
