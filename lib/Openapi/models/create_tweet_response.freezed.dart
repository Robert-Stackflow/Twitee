// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tweet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTweetResponse _$CreateTweetResponseFromJson(Map<String, dynamic> json) {
  return _CreateTweetResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateTweetResponse {
  CreateTweetResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this CreateTweetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTweetResponseCopyWith<CreateTweetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTweetResponseCopyWith<$Res> {
  factory $CreateTweetResponseCopyWith(
          CreateTweetResponse value, $Res Function(CreateTweetResponse) then) =
      _$CreateTweetResponseCopyWithImpl<$Res, CreateTweetResponse>;
  @useResult
  $Res call({CreateTweetResponseData data});

  $CreateTweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateTweetResponseCopyWithImpl<$Res, $Val extends CreateTweetResponse>
    implements $CreateTweetResponseCopyWith<$Res> {
  _$CreateTweetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTweetResponse
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
              as CreateTweetResponseData,
    ) as $Val);
  }

  /// Create a copy of CreateTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateTweetResponseDataCopyWith<$Res> get data {
    return $CreateTweetResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTweetResponseImplCopyWith<$Res>
    implements $CreateTweetResponseCopyWith<$Res> {
  factory _$$CreateTweetResponseImplCopyWith(_$CreateTweetResponseImpl value,
          $Res Function(_$CreateTweetResponseImpl) then) =
      __$$CreateTweetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTweetResponseData data});

  @override
  $CreateTweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateTweetResponseImplCopyWithImpl<$Res>
    extends _$CreateTweetResponseCopyWithImpl<$Res, _$CreateTweetResponseImpl>
    implements _$$CreateTweetResponseImplCopyWith<$Res> {
  __$$CreateTweetResponseImplCopyWithImpl(_$CreateTweetResponseImpl _value,
      $Res Function(_$CreateTweetResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateTweetResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTweetResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTweetResponseImpl implements _CreateTweetResponse {
  const _$CreateTweetResponseImpl({required this.data});

  factory _$CreateTweetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTweetResponseImplFromJson(json);

  @override
  final CreateTweetResponseData data;

  @override
  String toString() {
    return 'CreateTweetResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTweetResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTweetResponseImplCopyWith<_$CreateTweetResponseImpl> get copyWith =>
      __$$CreateTweetResponseImplCopyWithImpl<_$CreateTweetResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTweetResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateTweetResponse implements CreateTweetResponse {
  const factory _CreateTweetResponse(
          {required final CreateTweetResponseData data}) =
      _$CreateTweetResponseImpl;

  factory _CreateTweetResponse.fromJson(Map<String, dynamic> json) =
      _$CreateTweetResponseImpl.fromJson;

  @override
  CreateTweetResponseData get data;

  /// Create a copy of CreateTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTweetResponseImplCopyWith<_$CreateTweetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
