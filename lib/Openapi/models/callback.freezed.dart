// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'callback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Callback _$CallbackFromJson(Map<String, dynamic> json) {
  return _Callback.fromJson(json);
}

/// @nodoc
mixin _$Callback {
  String get endpoint => throw _privateConstructorUsedError;

  /// Serializes this Callback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Callback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallbackCopyWith<Callback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallbackCopyWith<$Res> {
  factory $CallbackCopyWith(Callback value, $Res Function(Callback) then) =
      _$CallbackCopyWithImpl<$Res, Callback>;
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class _$CallbackCopyWithImpl<$Res, $Val extends Callback>
    implements $CallbackCopyWith<$Res> {
  _$CallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Callback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_value.copyWith(
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallbackImplCopyWith<$Res>
    implements $CallbackCopyWith<$Res> {
  factory _$$CallbackImplCopyWith(
          _$CallbackImpl value, $Res Function(_$CallbackImpl) then) =
      __$$CallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class __$$CallbackImplCopyWithImpl<$Res>
    extends _$CallbackCopyWithImpl<$Res, _$CallbackImpl>
    implements _$$CallbackImplCopyWith<$Res> {
  __$$CallbackImplCopyWithImpl(
      _$CallbackImpl _value, $Res Function(_$CallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Callback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_$CallbackImpl(
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CallbackImpl implements _Callback {
  const _$CallbackImpl({required this.endpoint});

  factory _$CallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallbackImplFromJson(json);

  @override
  final String endpoint;

  @override
  String toString() {
    return 'Callback(endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallbackImpl &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  /// Create a copy of Callback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallbackImplCopyWith<_$CallbackImpl> get copyWith =>
      __$$CallbackImplCopyWithImpl<_$CallbackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallbackImplToJson(
      this,
    );
  }
}

abstract class _Callback implements Callback {
  const factory _Callback({required final String endpoint}) = _$CallbackImpl;

  factory _Callback.fromJson(Map<String, dynamic> json) =
      _$CallbackImpl.fromJson;

  @override
  String get endpoint;

  /// Create a copy of Callback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallbackImplCopyWith<_$CallbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
