// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserValue _$UserValueFromJson(Map<String, dynamic> json) {
  return _UserValue.fromJson(json);
}

/// @nodoc
mixin _$UserValue {
  @JsonKey(name: 'id_str')
  String get idStr => throw _privateConstructorUsedError;

  /// Serializes this UserValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserValueCopyWith<UserValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserValueCopyWith<$Res> {
  factory $UserValueCopyWith(UserValue value, $Res Function(UserValue) then) =
      _$UserValueCopyWithImpl<$Res, UserValue>;
  @useResult
  $Res call({@JsonKey(name: 'id_str') String idStr});
}

/// @nodoc
class _$UserValueCopyWithImpl<$Res, $Val extends UserValue>
    implements $UserValueCopyWith<$Res> {
  _$UserValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStr = null,
  }) {
    return _then(_value.copyWith(
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserValueImplCopyWith<$Res>
    implements $UserValueCopyWith<$Res> {
  factory _$$UserValueImplCopyWith(
          _$UserValueImpl value, $Res Function(_$UserValueImpl) then) =
      __$$UserValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_str') String idStr});
}

/// @nodoc
class __$$UserValueImplCopyWithImpl<$Res>
    extends _$UserValueCopyWithImpl<$Res, _$UserValueImpl>
    implements _$$UserValueImplCopyWith<$Res> {
  __$$UserValueImplCopyWithImpl(
      _$UserValueImpl _value, $Res Function(_$UserValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStr = null,
  }) {
    return _then(_$UserValueImpl(
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserValueImpl implements _UserValue {
  const _$UserValueImpl({@JsonKey(name: 'id_str') required this.idStr});

  factory _$UserValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserValueImplFromJson(json);

  @override
  @JsonKey(name: 'id_str')
  final String idStr;

  @override
  String toString() {
    return 'UserValue(idStr: $idStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserValueImpl &&
            (identical(other.idStr, idStr) || other.idStr == idStr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idStr);

  /// Create a copy of UserValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserValueImplCopyWith<_$UserValueImpl> get copyWith =>
      __$$UserValueImplCopyWithImpl<_$UserValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserValueImplToJson(
      this,
    );
  }
}

abstract class _UserValue implements UserValue {
  const factory _UserValue(
      {@JsonKey(name: 'id_str') required final String idStr}) = _$UserValueImpl;

  factory _UserValue.fromJson(Map<String, dynamic> json) =
      _$UserValueImpl.fromJson;

  @override
  @JsonKey(name: 'id_str')
  String get idStr;

  /// Create a copy of UserValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserValueImplCopyWith<_$UserValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
