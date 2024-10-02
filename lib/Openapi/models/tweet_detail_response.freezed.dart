// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetDetailResponse _$TweetDetailResponseFromJson(Map<String, dynamic> json) {
  return _TweetDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$TweetDetailResponse {
  TweetDetailResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this TweetDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetDetailResponseCopyWith<TweetDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetDetailResponseCopyWith<$Res> {
  factory $TweetDetailResponseCopyWith(
          TweetDetailResponse value, $Res Function(TweetDetailResponse) then) =
      _$TweetDetailResponseCopyWithImpl<$Res, TweetDetailResponse>;
  @useResult
  $Res call({TweetDetailResponseData data});

  $TweetDetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TweetDetailResponseCopyWithImpl<$Res, $Val extends TweetDetailResponse>
    implements $TweetDetailResponseCopyWith<$Res> {
  _$TweetDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetDetailResponse
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
              as TweetDetailResponseData,
    ) as $Val);
  }

  /// Create a copy of TweetDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetDetailResponseDataCopyWith<$Res> get data {
    return $TweetDetailResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetDetailResponseImplCopyWith<$Res>
    implements $TweetDetailResponseCopyWith<$Res> {
  factory _$$TweetDetailResponseImplCopyWith(_$TweetDetailResponseImpl value,
          $Res Function(_$TweetDetailResponseImpl) then) =
      __$$TweetDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetDetailResponseData data});

  @override
  $TweetDetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TweetDetailResponseImplCopyWithImpl<$Res>
    extends _$TweetDetailResponseCopyWithImpl<$Res, _$TweetDetailResponseImpl>
    implements _$$TweetDetailResponseImplCopyWith<$Res> {
  __$$TweetDetailResponseImplCopyWithImpl(_$TweetDetailResponseImpl _value,
      $Res Function(_$TweetDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TweetDetailResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TweetDetailResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetDetailResponseImpl implements _TweetDetailResponse {
  const _$TweetDetailResponseImpl({required this.data});

  factory _$TweetDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetDetailResponseImplFromJson(json);

  @override
  final TweetDetailResponseData data;

  @override
  String toString() {
    return 'TweetDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TweetDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetDetailResponseImplCopyWith<_$TweetDetailResponseImpl> get copyWith =>
      __$$TweetDetailResponseImplCopyWithImpl<_$TweetDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _TweetDetailResponse implements TweetDetailResponse {
  const factory _TweetDetailResponse(
          {required final TweetDetailResponseData data}) =
      _$TweetDetailResponseImpl;

  factory _TweetDetailResponse.fromJson(Map<String, dynamic> json) =
      _$TweetDetailResponseImpl.fromJson;

  @override
  TweetDetailResponseData get data;

  /// Create a copy of TweetDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetDetailResponseImplCopyWith<_$TweetDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
