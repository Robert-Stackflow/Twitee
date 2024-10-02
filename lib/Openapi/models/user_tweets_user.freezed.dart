// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tweets_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTweetsUser _$UserTweetsUserFromJson(Map<String, dynamic> json) {
  return _UserTweetsUser.fromJson(json);
}

/// @nodoc
mixin _$UserTweetsUser {
  UserTweetsResult get result => throw _privateConstructorUsedError;

  /// Serializes this UserTweetsUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTweetsUserCopyWith<UserTweetsUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTweetsUserCopyWith<$Res> {
  factory $UserTweetsUserCopyWith(
          UserTweetsUser value, $Res Function(UserTweetsUser) then) =
      _$UserTweetsUserCopyWithImpl<$Res, UserTweetsUser>;
  @useResult
  $Res call({UserTweetsResult result});

  $UserTweetsResultCopyWith<$Res> get result;
}

/// @nodoc
class _$UserTweetsUserCopyWithImpl<$Res, $Val extends UserTweetsUser>
    implements $UserTweetsUserCopyWith<$Res> {
  _$UserTweetsUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserTweetsResult,
    ) as $Val);
  }

  /// Create a copy of UserTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserTweetsResultCopyWith<$Res> get result {
    return $UserTweetsResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserTweetsUserImplCopyWith<$Res>
    implements $UserTweetsUserCopyWith<$Res> {
  factory _$$UserTweetsUserImplCopyWith(_$UserTweetsUserImpl value,
          $Res Function(_$UserTweetsUserImpl) then) =
      __$$UserTweetsUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserTweetsResult result});

  @override
  $UserTweetsResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$UserTweetsUserImplCopyWithImpl<$Res>
    extends _$UserTweetsUserCopyWithImpl<$Res, _$UserTweetsUserImpl>
    implements _$$UserTweetsUserImplCopyWith<$Res> {
  __$$UserTweetsUserImplCopyWithImpl(
      _$UserTweetsUserImpl _value, $Res Function(_$UserTweetsUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$UserTweetsUserImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserTweetsResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTweetsUserImpl implements _UserTweetsUser {
  const _$UserTweetsUserImpl({required this.result});

  factory _$UserTweetsUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTweetsUserImplFromJson(json);

  @override
  final UserTweetsResult result;

  @override
  String toString() {
    return 'UserTweetsUser(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTweetsUserImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of UserTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTweetsUserImplCopyWith<_$UserTweetsUserImpl> get copyWith =>
      __$$UserTweetsUserImplCopyWithImpl<_$UserTweetsUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTweetsUserImplToJson(
      this,
    );
  }
}

abstract class _UserTweetsUser implements UserTweetsUser {
  const factory _UserTweetsUser({required final UserTweetsResult result}) =
      _$UserTweetsUserImpl;

  factory _UserTweetsUser.fromJson(Map<String, dynamic> json) =
      _$UserTweetsUserImpl.fromJson;

  @override
  UserTweetsResult get result;

  /// Create a copy of UserTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTweetsUserImplCopyWith<_$UserTweetsUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
