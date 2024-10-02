// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_retweeters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetRetweetersResponse _$TweetRetweetersResponseFromJson(
    Map<String, dynamic> json) {
  return _TweetRetweetersResponse.fromJson(json);
}

/// @nodoc
mixin _$TweetRetweetersResponse {
  TweetRetweetersResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this TweetRetweetersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetRetweetersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetRetweetersResponseCopyWith<TweetRetweetersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetRetweetersResponseCopyWith<$Res> {
  factory $TweetRetweetersResponseCopyWith(TweetRetweetersResponse value,
          $Res Function(TweetRetweetersResponse) then) =
      _$TweetRetweetersResponseCopyWithImpl<$Res, TweetRetweetersResponse>;
  @useResult
  $Res call({TweetRetweetersResponseData data});

  $TweetRetweetersResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TweetRetweetersResponseCopyWithImpl<$Res,
        $Val extends TweetRetweetersResponse>
    implements $TweetRetweetersResponseCopyWith<$Res> {
  _$TweetRetweetersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetRetweetersResponse
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
              as TweetRetweetersResponseData,
    ) as $Val);
  }

  /// Create a copy of TweetRetweetersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetRetweetersResponseDataCopyWith<$Res> get data {
    return $TweetRetweetersResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetRetweetersResponseImplCopyWith<$Res>
    implements $TweetRetweetersResponseCopyWith<$Res> {
  factory _$$TweetRetweetersResponseImplCopyWith(
          _$TweetRetweetersResponseImpl value,
          $Res Function(_$TweetRetweetersResponseImpl) then) =
      __$$TweetRetweetersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetRetweetersResponseData data});

  @override
  $TweetRetweetersResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TweetRetweetersResponseImplCopyWithImpl<$Res>
    extends _$TweetRetweetersResponseCopyWithImpl<$Res,
        _$TweetRetweetersResponseImpl>
    implements _$$TweetRetweetersResponseImplCopyWith<$Res> {
  __$$TweetRetweetersResponseImplCopyWithImpl(
      _$TweetRetweetersResponseImpl _value,
      $Res Function(_$TweetRetweetersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetRetweetersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TweetRetweetersResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TweetRetweetersResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetRetweetersResponseImpl implements _TweetRetweetersResponse {
  const _$TweetRetweetersResponseImpl({required this.data});

  factory _$TweetRetweetersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetRetweetersResponseImplFromJson(json);

  @override
  final TweetRetweetersResponseData data;

  @override
  String toString() {
    return 'TweetRetweetersResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetRetweetersResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TweetRetweetersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetRetweetersResponseImplCopyWith<_$TweetRetweetersResponseImpl>
      get copyWith => __$$TweetRetweetersResponseImplCopyWithImpl<
          _$TweetRetweetersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetRetweetersResponseImplToJson(
      this,
    );
  }
}

abstract class _TweetRetweetersResponse implements TweetRetweetersResponse {
  const factory _TweetRetweetersResponse(
          {required final TweetRetweetersResponseData data}) =
      _$TweetRetweetersResponseImpl;

  factory _TweetRetweetersResponse.fromJson(Map<String, dynamic> json) =
      _$TweetRetweetersResponseImpl.fromJson;

  @override
  TweetRetweetersResponseData get data;

  /// Create a copy of TweetRetweetersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetRetweetersResponseImplCopyWith<_$TweetRetweetersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
