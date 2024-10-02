// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_favoriters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetFavoritersResponse _$TweetFavoritersResponseFromJson(
    Map<String, dynamic> json) {
  return _TweetFavoritersResponse.fromJson(json);
}

/// @nodoc
mixin _$TweetFavoritersResponse {
  TweetFavoritersResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this TweetFavoritersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetFavoritersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetFavoritersResponseCopyWith<TweetFavoritersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetFavoritersResponseCopyWith<$Res> {
  factory $TweetFavoritersResponseCopyWith(TweetFavoritersResponse value,
          $Res Function(TweetFavoritersResponse) then) =
      _$TweetFavoritersResponseCopyWithImpl<$Res, TweetFavoritersResponse>;
  @useResult
  $Res call({TweetFavoritersResponseData data});

  $TweetFavoritersResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TweetFavoritersResponseCopyWithImpl<$Res,
        $Val extends TweetFavoritersResponse>
    implements $TweetFavoritersResponseCopyWith<$Res> {
  _$TweetFavoritersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetFavoritersResponse
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
              as TweetFavoritersResponseData,
    ) as $Val);
  }

  /// Create a copy of TweetFavoritersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetFavoritersResponseDataCopyWith<$Res> get data {
    return $TweetFavoritersResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetFavoritersResponseImplCopyWith<$Res>
    implements $TweetFavoritersResponseCopyWith<$Res> {
  factory _$$TweetFavoritersResponseImplCopyWith(
          _$TweetFavoritersResponseImpl value,
          $Res Function(_$TweetFavoritersResponseImpl) then) =
      __$$TweetFavoritersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetFavoritersResponseData data});

  @override
  $TweetFavoritersResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TweetFavoritersResponseImplCopyWithImpl<$Res>
    extends _$TweetFavoritersResponseCopyWithImpl<$Res,
        _$TweetFavoritersResponseImpl>
    implements _$$TweetFavoritersResponseImplCopyWith<$Res> {
  __$$TweetFavoritersResponseImplCopyWithImpl(
      _$TweetFavoritersResponseImpl _value,
      $Res Function(_$TweetFavoritersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetFavoritersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TweetFavoritersResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TweetFavoritersResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetFavoritersResponseImpl implements _TweetFavoritersResponse {
  const _$TweetFavoritersResponseImpl({required this.data});

  factory _$TweetFavoritersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetFavoritersResponseImplFromJson(json);

  @override
  final TweetFavoritersResponseData data;

  @override
  String toString() {
    return 'TweetFavoritersResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetFavoritersResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TweetFavoritersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetFavoritersResponseImplCopyWith<_$TweetFavoritersResponseImpl>
      get copyWith => __$$TweetFavoritersResponseImplCopyWithImpl<
          _$TweetFavoritersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetFavoritersResponseImplToJson(
      this,
    );
  }
}

abstract class _TweetFavoritersResponse implements TweetFavoritersResponse {
  const factory _TweetFavoritersResponse(
          {required final TweetFavoritersResponseData data}) =
      _$TweetFavoritersResponseImpl;

  factory _TweetFavoritersResponse.fromJson(Map<String, dynamic> json) =
      _$TweetFavoritersResponseImpl.fromJson;

  @override
  TweetFavoritersResponseData get data;

  /// Create a copy of TweetFavoritersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetFavoritersResponseImplCopyWith<_$TweetFavoritersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
