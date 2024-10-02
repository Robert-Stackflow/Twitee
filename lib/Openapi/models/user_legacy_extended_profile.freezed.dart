// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_legacy_extended_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLegacyExtendedProfile _$UserLegacyExtendedProfileFromJson(
    Map<String, dynamic> json) {
  return _UserLegacyExtendedProfile.fromJson(json);
}

/// @nodoc
mixin _$UserLegacyExtendedProfile {
  UserLegacyExtendedProfileBirthdate get birthdate =>
      throw _privateConstructorUsedError;

  /// Serializes this UserLegacyExtendedProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLegacyExtendedProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLegacyExtendedProfileCopyWith<UserLegacyExtendedProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLegacyExtendedProfileCopyWith<$Res> {
  factory $UserLegacyExtendedProfileCopyWith(UserLegacyExtendedProfile value,
          $Res Function(UserLegacyExtendedProfile) then) =
      _$UserLegacyExtendedProfileCopyWithImpl<$Res, UserLegacyExtendedProfile>;
  @useResult
  $Res call({UserLegacyExtendedProfileBirthdate birthdate});

  $UserLegacyExtendedProfileBirthdateCopyWith<$Res> get birthdate;
}

/// @nodoc
class _$UserLegacyExtendedProfileCopyWithImpl<$Res,
        $Val extends UserLegacyExtendedProfile>
    implements $UserLegacyExtendedProfileCopyWith<$Res> {
  _$UserLegacyExtendedProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLegacyExtendedProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = null,
  }) {
    return _then(_value.copyWith(
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as UserLegacyExtendedProfileBirthdate,
    ) as $Val);
  }

  /// Create a copy of UserLegacyExtendedProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLegacyExtendedProfileBirthdateCopyWith<$Res> get birthdate {
    return $UserLegacyExtendedProfileBirthdateCopyWith<$Res>(_value.birthdate,
        (value) {
      return _then(_value.copyWith(birthdate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLegacyExtendedProfileImplCopyWith<$Res>
    implements $UserLegacyExtendedProfileCopyWith<$Res> {
  factory _$$UserLegacyExtendedProfileImplCopyWith(
          _$UserLegacyExtendedProfileImpl value,
          $Res Function(_$UserLegacyExtendedProfileImpl) then) =
      __$$UserLegacyExtendedProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserLegacyExtendedProfileBirthdate birthdate});

  @override
  $UserLegacyExtendedProfileBirthdateCopyWith<$Res> get birthdate;
}

/// @nodoc
class __$$UserLegacyExtendedProfileImplCopyWithImpl<$Res>
    extends _$UserLegacyExtendedProfileCopyWithImpl<$Res,
        _$UserLegacyExtendedProfileImpl>
    implements _$$UserLegacyExtendedProfileImplCopyWith<$Res> {
  __$$UserLegacyExtendedProfileImplCopyWithImpl(
      _$UserLegacyExtendedProfileImpl _value,
      $Res Function(_$UserLegacyExtendedProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLegacyExtendedProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = null,
  }) {
    return _then(_$UserLegacyExtendedProfileImpl(
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as UserLegacyExtendedProfileBirthdate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLegacyExtendedProfileImpl implements _UserLegacyExtendedProfile {
  const _$UserLegacyExtendedProfileImpl({required this.birthdate});

  factory _$UserLegacyExtendedProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLegacyExtendedProfileImplFromJson(json);

  @override
  final UserLegacyExtendedProfileBirthdate birthdate;

  @override
  String toString() {
    return 'UserLegacyExtendedProfile(birthdate: $birthdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLegacyExtendedProfileImpl &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, birthdate);

  /// Create a copy of UserLegacyExtendedProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLegacyExtendedProfileImplCopyWith<_$UserLegacyExtendedProfileImpl>
      get copyWith => __$$UserLegacyExtendedProfileImplCopyWithImpl<
          _$UserLegacyExtendedProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLegacyExtendedProfileImplToJson(
      this,
    );
  }
}

abstract class _UserLegacyExtendedProfile implements UserLegacyExtendedProfile {
  const factory _UserLegacyExtendedProfile(
          {required final UserLegacyExtendedProfileBirthdate birthdate}) =
      _$UserLegacyExtendedProfileImpl;

  factory _UserLegacyExtendedProfile.fromJson(Map<String, dynamic> json) =
      _$UserLegacyExtendedProfileImpl.fromJson;

  @override
  UserLegacyExtendedProfileBirthdate get birthdate;

  /// Create a copy of UserLegacyExtendedProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLegacyExtendedProfileImplCopyWith<_$UserLegacyExtendedProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
