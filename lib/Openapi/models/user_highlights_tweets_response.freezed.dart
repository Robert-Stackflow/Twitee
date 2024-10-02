// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_highlights_tweets_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHighlightsTweetsResponse _$UserHighlightsTweetsResponseFromJson(
    Map<String, dynamic> json) {
  return _UserHighlightsTweetsResponse.fromJson(json);
}

/// @nodoc
mixin _$UserHighlightsTweetsResponse {
  UserHighlightsTweetsData get data => throw _privateConstructorUsedError;

  /// Serializes this UserHighlightsTweetsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHighlightsTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHighlightsTweetsResponseCopyWith<UserHighlightsTweetsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHighlightsTweetsResponseCopyWith<$Res> {
  factory $UserHighlightsTweetsResponseCopyWith(
          UserHighlightsTweetsResponse value,
          $Res Function(UserHighlightsTweetsResponse) then) =
      _$UserHighlightsTweetsResponseCopyWithImpl<$Res,
          UserHighlightsTweetsResponse>;
  @useResult
  $Res call({UserHighlightsTweetsData data});

  $UserHighlightsTweetsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserHighlightsTweetsResponseCopyWithImpl<$Res,
        $Val extends UserHighlightsTweetsResponse>
    implements $UserHighlightsTweetsResponseCopyWith<$Res> {
  _$UserHighlightsTweetsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHighlightsTweetsResponse
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
              as UserHighlightsTweetsData,
    ) as $Val);
  }

  /// Create a copy of UserHighlightsTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHighlightsTweetsDataCopyWith<$Res> get data {
    return $UserHighlightsTweetsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHighlightsTweetsResponseImplCopyWith<$Res>
    implements $UserHighlightsTweetsResponseCopyWith<$Res> {
  factory _$$UserHighlightsTweetsResponseImplCopyWith(
          _$UserHighlightsTweetsResponseImpl value,
          $Res Function(_$UserHighlightsTweetsResponseImpl) then) =
      __$$UserHighlightsTweetsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserHighlightsTweetsData data});

  @override
  $UserHighlightsTweetsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserHighlightsTweetsResponseImplCopyWithImpl<$Res>
    extends _$UserHighlightsTweetsResponseCopyWithImpl<$Res,
        _$UserHighlightsTweetsResponseImpl>
    implements _$$UserHighlightsTweetsResponseImplCopyWith<$Res> {
  __$$UserHighlightsTweetsResponseImplCopyWithImpl(
      _$UserHighlightsTweetsResponseImpl _value,
      $Res Function(_$UserHighlightsTweetsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHighlightsTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserHighlightsTweetsResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserHighlightsTweetsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHighlightsTweetsResponseImpl
    implements _UserHighlightsTweetsResponse {
  const _$UserHighlightsTweetsResponseImpl({required this.data});

  factory _$UserHighlightsTweetsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserHighlightsTweetsResponseImplFromJson(json);

  @override
  final UserHighlightsTweetsData data;

  @override
  String toString() {
    return 'UserHighlightsTweetsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHighlightsTweetsResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserHighlightsTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHighlightsTweetsResponseImplCopyWith<
          _$UserHighlightsTweetsResponseImpl>
      get copyWith => __$$UserHighlightsTweetsResponseImplCopyWithImpl<
          _$UserHighlightsTweetsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHighlightsTweetsResponseImplToJson(
      this,
    );
  }
}

abstract class _UserHighlightsTweetsResponse
    implements UserHighlightsTweetsResponse {
  const factory _UserHighlightsTweetsResponse(
          {required final UserHighlightsTweetsData data}) =
      _$UserHighlightsTweetsResponseImpl;

  factory _UserHighlightsTweetsResponse.fromJson(Map<String, dynamic> json) =
      _$UserHighlightsTweetsResponseImpl.fromJson;

  @override
  UserHighlightsTweetsData get data;

  /// Create a copy of UserHighlightsTweetsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHighlightsTweetsResponseImplCopyWith<
          _$UserHighlightsTweetsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
