// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_highlights_tweets_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHighlightsTweetsData _$UserHighlightsTweetsDataFromJson(
    Map<String, dynamic> json) {
  return _UserHighlightsTweetsData.fromJson(json);
}

/// @nodoc
mixin _$UserHighlightsTweetsData {
  UserHighlightsTweetsUser get user => throw _privateConstructorUsedError;

  /// Serializes this UserHighlightsTweetsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHighlightsTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHighlightsTweetsDataCopyWith<UserHighlightsTweetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHighlightsTweetsDataCopyWith<$Res> {
  factory $UserHighlightsTweetsDataCopyWith(UserHighlightsTweetsData value,
          $Res Function(UserHighlightsTweetsData) then) =
      _$UserHighlightsTweetsDataCopyWithImpl<$Res, UserHighlightsTweetsData>;
  @useResult
  $Res call({UserHighlightsTweetsUser user});

  $UserHighlightsTweetsUserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserHighlightsTweetsDataCopyWithImpl<$Res,
        $Val extends UserHighlightsTweetsData>
    implements $UserHighlightsTweetsDataCopyWith<$Res> {
  _$UserHighlightsTweetsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHighlightsTweetsData
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
              as UserHighlightsTweetsUser,
    ) as $Val);
  }

  /// Create a copy of UserHighlightsTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHighlightsTweetsUserCopyWith<$Res> get user {
    return $UserHighlightsTweetsUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHighlightsTweetsDataImplCopyWith<$Res>
    implements $UserHighlightsTweetsDataCopyWith<$Res> {
  factory _$$UserHighlightsTweetsDataImplCopyWith(
          _$UserHighlightsTweetsDataImpl value,
          $Res Function(_$UserHighlightsTweetsDataImpl) then) =
      __$$UserHighlightsTweetsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserHighlightsTweetsUser user});

  @override
  $UserHighlightsTweetsUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserHighlightsTweetsDataImplCopyWithImpl<$Res>
    extends _$UserHighlightsTweetsDataCopyWithImpl<$Res,
        _$UserHighlightsTweetsDataImpl>
    implements _$$UserHighlightsTweetsDataImplCopyWith<$Res> {
  __$$UserHighlightsTweetsDataImplCopyWithImpl(
      _$UserHighlightsTweetsDataImpl _value,
      $Res Function(_$UserHighlightsTweetsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHighlightsTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserHighlightsTweetsDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserHighlightsTweetsUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHighlightsTweetsDataImpl implements _UserHighlightsTweetsData {
  const _$UserHighlightsTweetsDataImpl({required this.user});

  factory _$UserHighlightsTweetsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHighlightsTweetsDataImplFromJson(json);

  @override
  final UserHighlightsTweetsUser user;

  @override
  String toString() {
    return 'UserHighlightsTweetsData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHighlightsTweetsDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserHighlightsTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHighlightsTweetsDataImplCopyWith<_$UserHighlightsTweetsDataImpl>
      get copyWith => __$$UserHighlightsTweetsDataImplCopyWithImpl<
          _$UserHighlightsTweetsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHighlightsTweetsDataImplToJson(
      this,
    );
  }
}

abstract class _UserHighlightsTweetsData implements UserHighlightsTweetsData {
  const factory _UserHighlightsTweetsData(
          {required final UserHighlightsTweetsUser user}) =
      _$UserHighlightsTweetsDataImpl;

  factory _UserHighlightsTweetsData.fromJson(Map<String, dynamic> json) =
      _$UserHighlightsTweetsDataImpl.fromJson;

  @override
  UserHighlightsTweetsUser get user;

  /// Create a copy of UserHighlightsTweetsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHighlightsTweetsDataImplCopyWith<_$UserHighlightsTweetsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
