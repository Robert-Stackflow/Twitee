// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_result_by_rest_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetResultByRestIdResponse _$TweetResultByRestIdResponseFromJson(
    Map<String, dynamic> json) {
  return _TweetResultByRestIdResponse.fromJson(json);
}

/// @nodoc
mixin _$TweetResultByRestIdResponse {
  TweetResultByRestIdData get data => throw _privateConstructorUsedError;

  /// Serializes this TweetResultByRestIdResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetResultByRestIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetResultByRestIdResponseCopyWith<TweetResultByRestIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetResultByRestIdResponseCopyWith<$Res> {
  factory $TweetResultByRestIdResponseCopyWith(
          TweetResultByRestIdResponse value,
          $Res Function(TweetResultByRestIdResponse) then) =
      _$TweetResultByRestIdResponseCopyWithImpl<$Res,
          TweetResultByRestIdResponse>;
  @useResult
  $Res call({TweetResultByRestIdData data});

  $TweetResultByRestIdDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TweetResultByRestIdResponseCopyWithImpl<$Res,
        $Val extends TweetResultByRestIdResponse>
    implements $TweetResultByRestIdResponseCopyWith<$Res> {
  _$TweetResultByRestIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetResultByRestIdResponse
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
              as TweetResultByRestIdData,
    ) as $Val);
  }

  /// Create a copy of TweetResultByRestIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetResultByRestIdDataCopyWith<$Res> get data {
    return $TweetResultByRestIdDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetResultByRestIdResponseImplCopyWith<$Res>
    implements $TweetResultByRestIdResponseCopyWith<$Res> {
  factory _$$TweetResultByRestIdResponseImplCopyWith(
          _$TweetResultByRestIdResponseImpl value,
          $Res Function(_$TweetResultByRestIdResponseImpl) then) =
      __$$TweetResultByRestIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetResultByRestIdData data});

  @override
  $TweetResultByRestIdDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TweetResultByRestIdResponseImplCopyWithImpl<$Res>
    extends _$TweetResultByRestIdResponseCopyWithImpl<$Res,
        _$TweetResultByRestIdResponseImpl>
    implements _$$TweetResultByRestIdResponseImplCopyWith<$Res> {
  __$$TweetResultByRestIdResponseImplCopyWithImpl(
      _$TweetResultByRestIdResponseImpl _value,
      $Res Function(_$TweetResultByRestIdResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetResultByRestIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TweetResultByRestIdResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TweetResultByRestIdData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetResultByRestIdResponseImpl
    implements _TweetResultByRestIdResponse {
  const _$TweetResultByRestIdResponseImpl({required this.data});

  factory _$TweetResultByRestIdResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetResultByRestIdResponseImplFromJson(json);

  @override
  final TweetResultByRestIdData data;

  @override
  String toString() {
    return 'TweetResultByRestIdResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetResultByRestIdResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TweetResultByRestIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetResultByRestIdResponseImplCopyWith<_$TweetResultByRestIdResponseImpl>
      get copyWith => __$$TweetResultByRestIdResponseImplCopyWithImpl<
          _$TweetResultByRestIdResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetResultByRestIdResponseImplToJson(
      this,
    );
  }
}

abstract class _TweetResultByRestIdResponse
    implements TweetResultByRestIdResponse {
  const factory _TweetResultByRestIdResponse(
          {required final TweetResultByRestIdData data}) =
      _$TweetResultByRestIdResponseImpl;

  factory _TweetResultByRestIdResponse.fromJson(Map<String, dynamic> json) =
      _$TweetResultByRestIdResponseImpl.fromJson;

  @override
  TweetResultByRestIdData get data;

  /// Create a copy of TweetResultByRestIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetResultByRestIdResponseImplCopyWith<_$TweetResultByRestIdResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
