// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_highlights_tweets_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHighlightsTweetsUser _$UserHighlightsTweetsUserFromJson(
    Map<String, dynamic> json) {
  return _UserHighlightsTweetsUser.fromJson(json);
}

/// @nodoc
mixin _$UserHighlightsTweetsUser {
  UserHighlightsTweetsResult get result => throw _privateConstructorUsedError;

  /// Serializes this UserHighlightsTweetsUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHighlightsTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHighlightsTweetsUserCopyWith<UserHighlightsTweetsUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHighlightsTweetsUserCopyWith<$Res> {
  factory $UserHighlightsTweetsUserCopyWith(UserHighlightsTweetsUser value,
          $Res Function(UserHighlightsTweetsUser) then) =
      _$UserHighlightsTweetsUserCopyWithImpl<$Res, UserHighlightsTweetsUser>;
  @useResult
  $Res call({UserHighlightsTweetsResult result});

  $UserHighlightsTweetsResultCopyWith<$Res> get result;
}

/// @nodoc
class _$UserHighlightsTweetsUserCopyWithImpl<$Res,
        $Val extends UserHighlightsTweetsUser>
    implements $UserHighlightsTweetsUserCopyWith<$Res> {
  _$UserHighlightsTweetsUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHighlightsTweetsUser
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
              as UserHighlightsTweetsResult,
    ) as $Val);
  }

  /// Create a copy of UserHighlightsTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHighlightsTweetsResultCopyWith<$Res> get result {
    return $UserHighlightsTweetsResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHighlightsTweetsUserImplCopyWith<$Res>
    implements $UserHighlightsTweetsUserCopyWith<$Res> {
  factory _$$UserHighlightsTweetsUserImplCopyWith(
          _$UserHighlightsTweetsUserImpl value,
          $Res Function(_$UserHighlightsTweetsUserImpl) then) =
      __$$UserHighlightsTweetsUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserHighlightsTweetsResult result});

  @override
  $UserHighlightsTweetsResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$UserHighlightsTweetsUserImplCopyWithImpl<$Res>
    extends _$UserHighlightsTweetsUserCopyWithImpl<$Res,
        _$UserHighlightsTweetsUserImpl>
    implements _$$UserHighlightsTweetsUserImplCopyWith<$Res> {
  __$$UserHighlightsTweetsUserImplCopyWithImpl(
      _$UserHighlightsTweetsUserImpl _value,
      $Res Function(_$UserHighlightsTweetsUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHighlightsTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$UserHighlightsTweetsUserImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserHighlightsTweetsResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHighlightsTweetsUserImpl implements _UserHighlightsTweetsUser {
  const _$UserHighlightsTweetsUserImpl({required this.result});

  factory _$UserHighlightsTweetsUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHighlightsTweetsUserImplFromJson(json);

  @override
  final UserHighlightsTweetsResult result;

  @override
  String toString() {
    return 'UserHighlightsTweetsUser(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHighlightsTweetsUserImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of UserHighlightsTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHighlightsTweetsUserImplCopyWith<_$UserHighlightsTweetsUserImpl>
      get copyWith => __$$UserHighlightsTweetsUserImplCopyWithImpl<
          _$UserHighlightsTweetsUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHighlightsTweetsUserImplToJson(
      this,
    );
  }
}

abstract class _UserHighlightsTweetsUser implements UserHighlightsTweetsUser {
  const factory _UserHighlightsTweetsUser(
          {required final UserHighlightsTweetsResult result}) =
      _$UserHighlightsTweetsUserImpl;

  factory _UserHighlightsTweetsUser.fromJson(Map<String, dynamic> json) =
      _$UserHighlightsTweetsUserImpl.fromJson;

  @override
  UserHighlightsTweetsResult get result;

  /// Create a copy of UserHighlightsTweetsUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHighlightsTweetsUserImplCopyWith<_$UserHighlightsTweetsUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}
