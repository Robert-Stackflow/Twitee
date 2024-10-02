// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tweets_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTweetsResponse _$UserTweetsResponseFromJson(Map<String, dynamic> json) {
  return _UserTweetsResponse.fromJson(json);
}

/// @nodoc
mixin _$UserTweetsResponse {
  UserTweetsData get data => throw _privateConstructorUsedError;

  /// Serializes this UserTweetsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTweetsResponseCopyWith<UserTweetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTweetsResponseCopyWith<$Res> {
  factory $UserTweetsResponseCopyWith(
          UserTweetsResponse value, $Res Function(UserTweetsResponse) then) =
      _$UserTweetsResponseCopyWithImpl<$Res, UserTweetsResponse>;
  @useResult
  $Res call({UserTweetsData data});

  $UserTweetsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserTweetsResponseCopyWithImpl<$Res, $Val extends UserTweetsResponse>
    implements $UserTweetsResponseCopyWith<$Res> {
  _$UserTweetsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserTweetsData,
    ) as $Val);
  }

  /// Create a copy of UserTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserTweetsDataCopyWith<$Res> get data {
    return $UserTweetsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserTweetsResponseImplCopyWith<$Res>
    implements $UserTweetsResponseCopyWith<$Res> {
  factory _$$UserTweetsResponseImplCopyWith(_$UserTweetsResponseImpl value,
          $Res Function(_$UserTweetsResponseImpl) then) =
      __$$UserTweetsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserTweetsData data});

  @override
  $UserTweetsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserTweetsResponseImplCopyWithImpl<$Res>
    extends _$UserTweetsResponseCopyWithImpl<$Res, _$UserTweetsResponseImpl>
    implements _$$UserTweetsResponseImplCopyWith<$Res> {
  __$$UserTweetsResponseImplCopyWithImpl(_$UserTweetsResponseImpl _value,
      $Res Function(_$UserTweetsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserTweetsResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserTweetsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTweetsResponseImpl implements _UserTweetsResponse {
  const _$UserTweetsResponseImpl({required this.data});

  factory _$UserTweetsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTweetsResponseImplFromJson(json);

  @override
  final UserTweetsData data;

  @override
  String toString() {
    return 'UserTweetsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTweetsResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTweetsResponseImplCopyWith<_$UserTweetsResponseImpl> get copyWith =>
      __$$UserTweetsResponseImplCopyWithImpl<_$UserTweetsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTweetsResponseImplToJson(
      this,
    );
  }
}

abstract class _UserTweetsResponse implements UserTweetsResponse {
  const factory _UserTweetsResponse({required final UserTweetsData data}) =
      _$UserTweetsResponseImpl;

  factory _UserTweetsResponse.fromJson(Map<String, dynamic> json) =
      _$UserTweetsResponseImpl.fromJson;

  @override
  UserTweetsData get data;

  /// Create a copy of UserTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTweetsResponseImplCopyWith<_$UserTweetsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
