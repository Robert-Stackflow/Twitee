// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tweets_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTweetsData _$UserTweetsDataFromJson(Map<String, dynamic> json) {
  return _UserTweetsData.fromJson(json);
}

/// @nodoc
mixin _$UserTweetsData {
  UserTweetsUser get user => throw _privateConstructorUsedError;

  /// Serializes this UserTweetsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTweetsDataCopyWith<UserTweetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTweetsDataCopyWith<$Res> {
  factory $UserTweetsDataCopyWith(
          UserTweetsData value, $Res Function(UserTweetsData) then) =
      _$UserTweetsDataCopyWithImpl<$Res, UserTweetsData>;
  @useResult
  $Res call({UserTweetsUser user});

  $UserTweetsUserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserTweetsDataCopyWithImpl<$Res, $Val extends UserTweetsData>
    implements $UserTweetsDataCopyWith<$Res> {
  _$UserTweetsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserTweetsUser,
    ) as $Val);
  }

  /// Create a copy of UserTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserTweetsUserCopyWith<$Res> get user {
    return $UserTweetsUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserTweetsDataImplCopyWith<$Res>
    implements $UserTweetsDataCopyWith<$Res> {
  factory _$$UserTweetsDataImplCopyWith(_$UserTweetsDataImpl value,
          $Res Function(_$UserTweetsDataImpl) then) =
      __$$UserTweetsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserTweetsUser user});

  @override
  $UserTweetsUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserTweetsDataImplCopyWithImpl<$Res>
    extends _$UserTweetsDataCopyWithImpl<$Res, _$UserTweetsDataImpl>
    implements _$$UserTweetsDataImplCopyWith<$Res> {
  __$$UserTweetsDataImplCopyWithImpl(
      _$UserTweetsDataImpl _value, $Res Function(_$UserTweetsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserTweetsDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserTweetsUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTweetsDataImpl implements _UserTweetsData {
  const _$UserTweetsDataImpl({required this.user});

  factory _$UserTweetsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTweetsDataImplFromJson(json);

  @override
  final UserTweetsUser user;

  @override
  String toString() {
    return 'UserTweetsData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTweetsDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTweetsDataImplCopyWith<_$UserTweetsDataImpl> get copyWith =>
      __$$UserTweetsDataImplCopyWithImpl<_$UserTweetsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTweetsDataImplToJson(
      this,
    );
  }
}

abstract class _UserTweetsData implements UserTweetsData {
  const factory _UserTweetsData({required final UserTweetsUser user}) =
      _$UserTweetsDataImpl;

  factory _UserTweetsData.fromJson(Map<String, dynamic> json) =
      _$UserTweetsDataImpl.fromJson;

  @override
  UserTweetsUser get user;

  /// Create a copy of UserTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTweetsDataImplCopyWith<_$UserTweetsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
