// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_bookmark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteBookmarkResponse _$DeleteBookmarkResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteBookmarkResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteBookmarkResponse {
  DeleteBookmarkResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this DeleteBookmarkResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteBookmarkResponseCopyWith<DeleteBookmarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteBookmarkResponseCopyWith<$Res> {
  factory $DeleteBookmarkResponseCopyWith(DeleteBookmarkResponse value,
          $Res Function(DeleteBookmarkResponse) then) =
      _$DeleteBookmarkResponseCopyWithImpl<$Res, DeleteBookmarkResponse>;
  @useResult
  $Res call({DeleteBookmarkResponseData data});

  $DeleteBookmarkResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeleteBookmarkResponseCopyWithImpl<$Res,
        $Val extends DeleteBookmarkResponse>
    implements $DeleteBookmarkResponseCopyWith<$Res> {
  _$DeleteBookmarkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteBookmarkResponse
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
              as DeleteBookmarkResponseData,
    ) as $Val);
  }

  /// Create a copy of DeleteBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteBookmarkResponseDataCopyWith<$Res> get data {
    return $DeleteBookmarkResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteBookmarkResponseImplCopyWith<$Res>
    implements $DeleteBookmarkResponseCopyWith<$Res> {
  factory _$$DeleteBookmarkResponseImplCopyWith(
          _$DeleteBookmarkResponseImpl value,
          $Res Function(_$DeleteBookmarkResponseImpl) then) =
      __$$DeleteBookmarkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteBookmarkResponseData data});

  @override
  $DeleteBookmarkResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteBookmarkResponseImplCopyWithImpl<$Res>
    extends _$DeleteBookmarkResponseCopyWithImpl<$Res,
        _$DeleteBookmarkResponseImpl>
    implements _$$DeleteBookmarkResponseImplCopyWith<$Res> {
  __$$DeleteBookmarkResponseImplCopyWithImpl(
      _$DeleteBookmarkResponseImpl _value,
      $Res Function(_$DeleteBookmarkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteBookmarkResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeleteBookmarkResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteBookmarkResponseImpl implements _DeleteBookmarkResponse {
  const _$DeleteBookmarkResponseImpl({required this.data});

  factory _$DeleteBookmarkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteBookmarkResponseImplFromJson(json);

  @override
  final DeleteBookmarkResponseData data;

  @override
  String toString() {
    return 'DeleteBookmarkResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DeleteBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookmarkResponseImplCopyWith<_$DeleteBookmarkResponseImpl>
      get copyWith => __$$DeleteBookmarkResponseImplCopyWithImpl<
          _$DeleteBookmarkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteBookmarkResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteBookmarkResponse implements DeleteBookmarkResponse {
  const factory _DeleteBookmarkResponse(
          {required final DeleteBookmarkResponseData data}) =
      _$DeleteBookmarkResponseImpl;

  factory _DeleteBookmarkResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteBookmarkResponseImpl.fromJson;

  @override
  DeleteBookmarkResponseData get data;

  /// Create a copy of DeleteBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBookmarkResponseImplCopyWith<_$DeleteBookmarkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
