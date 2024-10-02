// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_tweet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTweetResponse _$DeleteTweetResponseFromJson(Map<String, dynamic> json) {
  return _DeleteTweetResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteTweetResponse {
  DeleteTweetResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this DeleteTweetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTweetResponseCopyWith<DeleteTweetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTweetResponseCopyWith<$Res> {
  factory $DeleteTweetResponseCopyWith(
          DeleteTweetResponse value, $Res Function(DeleteTweetResponse) then) =
      _$DeleteTweetResponseCopyWithImpl<$Res, DeleteTweetResponse>;
  @useResult
  $Res call({DeleteTweetResponseData data});

  $DeleteTweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeleteTweetResponseCopyWithImpl<$Res, $Val extends DeleteTweetResponse>
    implements $DeleteTweetResponseCopyWith<$Res> {
  _$DeleteTweetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTweetResponse
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
              as DeleteTweetResponseData,
    ) as $Val);
  }

  /// Create a copy of DeleteTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteTweetResponseDataCopyWith<$Res> get data {
    return $DeleteTweetResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteTweetResponseImplCopyWith<$Res>
    implements $DeleteTweetResponseCopyWith<$Res> {
  factory _$$DeleteTweetResponseImplCopyWith(_$DeleteTweetResponseImpl value,
          $Res Function(_$DeleteTweetResponseImpl) then) =
      __$$DeleteTweetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteTweetResponseData data});

  @override
  $DeleteTweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteTweetResponseImplCopyWithImpl<$Res>
    extends _$DeleteTweetResponseCopyWithImpl<$Res, _$DeleteTweetResponseImpl>
    implements _$$DeleteTweetResponseImplCopyWith<$Res> {
  __$$DeleteTweetResponseImplCopyWithImpl(_$DeleteTweetResponseImpl _value,
      $Res Function(_$DeleteTweetResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteTweetResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeleteTweetResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTweetResponseImpl implements _DeleteTweetResponse {
  const _$DeleteTweetResponseImpl({required this.data});

  factory _$DeleteTweetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTweetResponseImplFromJson(json);

  @override
  final DeleteTweetResponseData data;

  @override
  String toString() {
    return 'DeleteTweetResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTweetResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DeleteTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTweetResponseImplCopyWith<_$DeleteTweetResponseImpl> get copyWith =>
      __$$DeleteTweetResponseImplCopyWithImpl<_$DeleteTweetResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTweetResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteTweetResponse implements DeleteTweetResponse {
  const factory _DeleteTweetResponse(
          {required final DeleteTweetResponseData data}) =
      _$DeleteTweetResponseImpl;

  factory _DeleteTweetResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteTweetResponseImpl.fromJson;

  @override
  DeleteTweetResponseData get data;

  /// Create a copy of DeleteTweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTweetResponseImplCopyWith<_$DeleteTweetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
