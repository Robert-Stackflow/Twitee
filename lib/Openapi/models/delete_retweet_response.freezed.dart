// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_retweet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteRetweetResponse _$DeleteRetweetResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteRetweetResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteRetweetResponse {
  DeleteRetweetResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this DeleteRetweetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteRetweetResponseCopyWith<DeleteRetweetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRetweetResponseCopyWith<$Res> {
  factory $DeleteRetweetResponseCopyWith(DeleteRetweetResponse value,
          $Res Function(DeleteRetweetResponse) then) =
      _$DeleteRetweetResponseCopyWithImpl<$Res, DeleteRetweetResponse>;
  @useResult
  $Res call({DeleteRetweetResponseData data});

  $DeleteRetweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeleteRetweetResponseCopyWithImpl<$Res,
        $Val extends DeleteRetweetResponse>
    implements $DeleteRetweetResponseCopyWith<$Res> {
  _$DeleteRetweetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteRetweetResponse
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
              as DeleteRetweetResponseData,
    ) as $Val);
  }

  /// Create a copy of DeleteRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteRetweetResponseDataCopyWith<$Res> get data {
    return $DeleteRetweetResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteRetweetResponseImplCopyWith<$Res>
    implements $DeleteRetweetResponseCopyWith<$Res> {
  factory _$$DeleteRetweetResponseImplCopyWith(
          _$DeleteRetweetResponseImpl value,
          $Res Function(_$DeleteRetweetResponseImpl) then) =
      __$$DeleteRetweetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteRetweetResponseData data});

  @override
  $DeleteRetweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteRetweetResponseImplCopyWithImpl<$Res>
    extends _$DeleteRetweetResponseCopyWithImpl<$Res,
        _$DeleteRetweetResponseImpl>
    implements _$$DeleteRetweetResponseImplCopyWith<$Res> {
  __$$DeleteRetweetResponseImplCopyWithImpl(_$DeleteRetweetResponseImpl _value,
      $Res Function(_$DeleteRetweetResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteRetweetResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeleteRetweetResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRetweetResponseImpl implements _DeleteRetweetResponse {
  const _$DeleteRetweetResponseImpl({required this.data});

  factory _$DeleteRetweetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRetweetResponseImplFromJson(json);

  @override
  final DeleteRetweetResponseData data;

  @override
  String toString() {
    return 'DeleteRetweetResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRetweetResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DeleteRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRetweetResponseImplCopyWith<_$DeleteRetweetResponseImpl>
      get copyWith => __$$DeleteRetweetResponseImplCopyWithImpl<
          _$DeleteRetweetResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRetweetResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteRetweetResponse implements DeleteRetweetResponse {
  const factory _DeleteRetweetResponse(
          {required final DeleteRetweetResponseData data}) =
      _$DeleteRetweetResponseImpl;

  factory _DeleteRetweetResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteRetweetResponseImpl.fromJson;

  @override
  DeleteRetweetResponseData get data;

  /// Create a copy of DeleteRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRetweetResponseImplCopyWith<_$DeleteRetweetResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
