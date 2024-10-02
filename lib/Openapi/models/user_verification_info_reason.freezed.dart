// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_verification_info_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVerificationInfoReason _$UserVerificationInfoReasonFromJson(
    Map<String, dynamic> json) {
  return _UserVerificationInfoReason.fromJson(json);
}

/// @nodoc
mixin _$UserVerificationInfoReason {
  UserVerificationInfoReasonDescription get description =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'override_verified_year')
  int get overrideVerifiedYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_since_msec')
  String get verifiedSinceMsec => throw _privateConstructorUsedError;

  /// Serializes this UserVerificationInfoReason to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserVerificationInfoReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserVerificationInfoReasonCopyWith<UserVerificationInfoReason>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationInfoReasonCopyWith<$Res> {
  factory $UserVerificationInfoReasonCopyWith(UserVerificationInfoReason value,
          $Res Function(UserVerificationInfoReason) then) =
      _$UserVerificationInfoReasonCopyWithImpl<$Res,
          UserVerificationInfoReason>;
  @useResult
  $Res call(
      {UserVerificationInfoReasonDescription description,
      @JsonKey(name: 'override_verified_year') int overrideVerifiedYear,
      @JsonKey(name: 'verified_since_msec') String verifiedSinceMsec});

  $UserVerificationInfoReasonDescriptionCopyWith<$Res> get description;
}

/// @nodoc
class _$UserVerificationInfoReasonCopyWithImpl<$Res,
        $Val extends UserVerificationInfoReason>
    implements $UserVerificationInfoReasonCopyWith<$Res> {
  _$UserVerificationInfoReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationInfoReason
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? overrideVerifiedYear = null,
    Object? verifiedSinceMsec = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfoReasonDescription,
      overrideVerifiedYear: null == overrideVerifiedYear
          ? _value.overrideVerifiedYear
          : overrideVerifiedYear // ignore: cast_nullable_to_non_nullable
              as int,
      verifiedSinceMsec: null == verifiedSinceMsec
          ? _value.verifiedSinceMsec
          : verifiedSinceMsec // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of UserVerificationInfoReason
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserVerificationInfoReasonDescriptionCopyWith<$Res> get description {
    return $UserVerificationInfoReasonDescriptionCopyWith<$Res>(
        _value.description, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserVerificationInfoReasonImplCopyWith<$Res>
    implements $UserVerificationInfoReasonCopyWith<$Res> {
  factory _$$UserVerificationInfoReasonImplCopyWith(
          _$UserVerificationInfoReasonImpl value,
          $Res Function(_$UserVerificationInfoReasonImpl) then) =
      __$$UserVerificationInfoReasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserVerificationInfoReasonDescription description,
      @JsonKey(name: 'override_verified_year') int overrideVerifiedYear,
      @JsonKey(name: 'verified_since_msec') String verifiedSinceMsec});

  @override
  $UserVerificationInfoReasonDescriptionCopyWith<$Res> get description;
}

/// @nodoc
class __$$UserVerificationInfoReasonImplCopyWithImpl<$Res>
    extends _$UserVerificationInfoReasonCopyWithImpl<$Res,
        _$UserVerificationInfoReasonImpl>
    implements _$$UserVerificationInfoReasonImplCopyWith<$Res> {
  __$$UserVerificationInfoReasonImplCopyWithImpl(
      _$UserVerificationInfoReasonImpl _value,
      $Res Function(_$UserVerificationInfoReasonImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationInfoReason
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? overrideVerifiedYear = null,
    Object? verifiedSinceMsec = null,
  }) {
    return _then(_$UserVerificationInfoReasonImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfoReasonDescription,
      overrideVerifiedYear: null == overrideVerifiedYear
          ? _value.overrideVerifiedYear
          : overrideVerifiedYear // ignore: cast_nullable_to_non_nullable
              as int,
      verifiedSinceMsec: null == verifiedSinceMsec
          ? _value.verifiedSinceMsec
          : verifiedSinceMsec // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVerificationInfoReasonImpl implements _UserVerificationInfoReason {
  const _$UserVerificationInfoReasonImpl(
      {required this.description,
      @JsonKey(name: 'override_verified_year')
      required this.overrideVerifiedYear,
      @JsonKey(name: 'verified_since_msec') required this.verifiedSinceMsec});

  factory _$UserVerificationInfoReasonImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserVerificationInfoReasonImplFromJson(json);

  @override
  final UserVerificationInfoReasonDescription description;
  @override
  @JsonKey(name: 'override_verified_year')
  final int overrideVerifiedYear;
  @override
  @JsonKey(name: 'verified_since_msec')
  final String verifiedSinceMsec;

  @override
  String toString() {
    return 'UserVerificationInfoReason(description: $description, overrideVerifiedYear: $overrideVerifiedYear, verifiedSinceMsec: $verifiedSinceMsec)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerificationInfoReasonImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.overrideVerifiedYear, overrideVerifiedYear) ||
                other.overrideVerifiedYear == overrideVerifiedYear) &&
            (identical(other.verifiedSinceMsec, verifiedSinceMsec) ||
                other.verifiedSinceMsec == verifiedSinceMsec));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, overrideVerifiedYear, verifiedSinceMsec);

  /// Create a copy of UserVerificationInfoReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerificationInfoReasonImplCopyWith<_$UserVerificationInfoReasonImpl>
      get copyWith => __$$UserVerificationInfoReasonImplCopyWithImpl<
          _$UserVerificationInfoReasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVerificationInfoReasonImplToJson(
      this,
    );
  }
}

abstract class _UserVerificationInfoReason
    implements UserVerificationInfoReason {
  const factory _UserVerificationInfoReason(
          {required final UserVerificationInfoReasonDescription description,
          @JsonKey(name: 'override_verified_year')
          required final int overrideVerifiedYear,
          @JsonKey(name: 'verified_since_msec')
          required final String verifiedSinceMsec}) =
      _$UserVerificationInfoReasonImpl;

  factory _UserVerificationInfoReason.fromJson(Map<String, dynamic> json) =
      _$UserVerificationInfoReasonImpl.fromJson;

  @override
  UserVerificationInfoReasonDescription get description;
  @override
  @JsonKey(name: 'override_verified_year')
  int get overrideVerifiedYear;
  @override
  @JsonKey(name: 'verified_since_msec')
  String get verifiedSinceMsec;

  /// Create a copy of UserVerificationInfoReason
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserVerificationInfoReasonImplCopyWith<_$UserVerificationInfoReasonImpl>
      get copyWith => throw _privateConstructorUsedError;
}
