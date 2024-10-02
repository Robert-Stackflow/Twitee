// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_verification_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVerificationInfo _$UserVerificationInfoFromJson(Map<String, dynamic> json) {
  return _UserVerificationInfo.fromJson(json);
}

/// @nodoc
mixin _$UserVerificationInfo {
  @JsonKey(name: 'is_identity_verified')
  bool get isIdentityVerified => throw _privateConstructorUsedError;
  UserVerificationInfoReason get reason => throw _privateConstructorUsedError;

  /// Serializes this UserVerificationInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserVerificationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserVerificationInfoCopyWith<UserVerificationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationInfoCopyWith<$Res> {
  factory $UserVerificationInfoCopyWith(UserVerificationInfo value,
          $Res Function(UserVerificationInfo) then) =
      _$UserVerificationInfoCopyWithImpl<$Res, UserVerificationInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_identity_verified') bool isIdentityVerified,
      UserVerificationInfoReason reason});

  $UserVerificationInfoReasonCopyWith<$Res> get reason;
}

/// @nodoc
class _$UserVerificationInfoCopyWithImpl<$Res,
        $Val extends UserVerificationInfo>
    implements $UserVerificationInfoCopyWith<$Res> {
  _$UserVerificationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIdentityVerified = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      isIdentityVerified: null == isIdentityVerified
          ? _value.isIdentityVerified
          : isIdentityVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfoReason,
    ) as $Val);
  }

  /// Create a copy of UserVerificationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserVerificationInfoReasonCopyWith<$Res> get reason {
    return $UserVerificationInfoReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserVerificationInfoImplCopyWith<$Res>
    implements $UserVerificationInfoCopyWith<$Res> {
  factory _$$UserVerificationInfoImplCopyWith(_$UserVerificationInfoImpl value,
          $Res Function(_$UserVerificationInfoImpl) then) =
      __$$UserVerificationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_identity_verified') bool isIdentityVerified,
      UserVerificationInfoReason reason});

  @override
  $UserVerificationInfoReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$$UserVerificationInfoImplCopyWithImpl<$Res>
    extends _$UserVerificationInfoCopyWithImpl<$Res, _$UserVerificationInfoImpl>
    implements _$$UserVerificationInfoImplCopyWith<$Res> {
  __$$UserVerificationInfoImplCopyWithImpl(_$UserVerificationInfoImpl _value,
      $Res Function(_$UserVerificationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIdentityVerified = null,
    Object? reason = null,
  }) {
    return _then(_$UserVerificationInfoImpl(
      isIdentityVerified: null == isIdentityVerified
          ? _value.isIdentityVerified
          : isIdentityVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfoReason,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVerificationInfoImpl implements _UserVerificationInfo {
  const _$UserVerificationInfoImpl(
      {@JsonKey(name: 'is_identity_verified') required this.isIdentityVerified,
      required this.reason});

  factory _$UserVerificationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserVerificationInfoImplFromJson(json);

  @override
  @JsonKey(name: 'is_identity_verified')
  final bool isIdentityVerified;
  @override
  final UserVerificationInfoReason reason;

  @override
  String toString() {
    return 'UserVerificationInfo(isIdentityVerified: $isIdentityVerified, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerificationInfoImpl &&
            (identical(other.isIdentityVerified, isIdentityVerified) ||
                other.isIdentityVerified == isIdentityVerified) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isIdentityVerified, reason);

  /// Create a copy of UserVerificationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerificationInfoImplCopyWith<_$UserVerificationInfoImpl>
      get copyWith =>
          __$$UserVerificationInfoImplCopyWithImpl<_$UserVerificationInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVerificationInfoImplToJson(
      this,
    );
  }
}

abstract class _UserVerificationInfo implements UserVerificationInfo {
  const factory _UserVerificationInfo(
          {@JsonKey(name: 'is_identity_verified')
          required final bool isIdentityVerified,
          required final UserVerificationInfoReason reason}) =
      _$UserVerificationInfoImpl;

  factory _UserVerificationInfo.fromJson(Map<String, dynamic> json) =
      _$UserVerificationInfoImpl.fromJson;

  @override
  @JsonKey(name: 'is_identity_verified')
  bool get isIdentityVerified;
  @override
  UserVerificationInfoReason get reason;

  /// Create a copy of UserVerificationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserVerificationInfoImplCopyWith<_$UserVerificationInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
