// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowResponse _$FollowResponseFromJson(Map<String, dynamic> json) {
  return _FollowResponse.fromJson(json);
}

/// @nodoc
mixin _$FollowResponse {
  FollowResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this FollowResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowResponseCopyWith<FollowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowResponseCopyWith<$Res> {
  factory $FollowResponseCopyWith(
          FollowResponse value, $Res Function(FollowResponse) then) =
      _$FollowResponseCopyWithImpl<$Res, FollowResponse>;
  @useResult
  $Res call({FollowResponseData data});

  $FollowResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FollowResponseCopyWithImpl<$Res, $Val extends FollowResponse>
    implements $FollowResponseCopyWith<$Res> {
  _$FollowResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowResponse
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
              as FollowResponseData,
    ) as $Val);
  }

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FollowResponseDataCopyWith<$Res> get data {
    return $FollowResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowResponseImplCopyWith<$Res>
    implements $FollowResponseCopyWith<$Res> {
  factory _$$FollowResponseImplCopyWith(_$FollowResponseImpl value,
          $Res Function(_$FollowResponseImpl) then) =
      __$$FollowResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FollowResponseData data});

  @override
  $FollowResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FollowResponseImplCopyWithImpl<$Res>
    extends _$FollowResponseCopyWithImpl<$Res, _$FollowResponseImpl>
    implements _$$FollowResponseImplCopyWith<$Res> {
  __$$FollowResponseImplCopyWithImpl(
      _$FollowResponseImpl _value, $Res Function(_$FollowResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FollowResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FollowResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowResponseImpl implements _FollowResponse {
  const _$FollowResponseImpl({required this.data});

  factory _$FollowResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowResponseImplFromJson(json);

  @override
  final FollowResponseData data;

  @override
  String toString() {
    return 'FollowResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowResponseImplCopyWith<_$FollowResponseImpl> get copyWith =>
      __$$FollowResponseImplCopyWithImpl<_$FollowResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowResponseImplToJson(
      this,
    );
  }
}

abstract class _FollowResponse implements FollowResponse {
  const factory _FollowResponse({required final FollowResponseData data}) =
      _$FollowResponseImpl;

  factory _FollowResponse.fromJson(Map<String, dynamic> json) =
      _$FollowResponseImpl.fromJson;

  @override
  FollowResponseData get data;

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowResponseImplCopyWith<_$FollowResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
