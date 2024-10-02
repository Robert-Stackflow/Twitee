// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bookmark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookmarkResponse _$CreateBookmarkResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateBookmarkResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateBookmarkResponse {
  CreateBookmarkResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this CreateBookmarkResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBookmarkResponseCopyWith<CreateBookmarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookmarkResponseCopyWith<$Res> {
  factory $CreateBookmarkResponseCopyWith(CreateBookmarkResponse value,
          $Res Function(CreateBookmarkResponse) then) =
      _$CreateBookmarkResponseCopyWithImpl<$Res, CreateBookmarkResponse>;
  @useResult
  $Res call({CreateBookmarkResponseData data});

  $CreateBookmarkResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateBookmarkResponseCopyWithImpl<$Res,
        $Val extends CreateBookmarkResponse>
    implements $CreateBookmarkResponseCopyWith<$Res> {
  _$CreateBookmarkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBookmarkResponse
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
              as CreateBookmarkResponseData,
    ) as $Val);
  }

  /// Create a copy of CreateBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateBookmarkResponseDataCopyWith<$Res> get data {
    return $CreateBookmarkResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBookmarkResponseImplCopyWith<$Res>
    implements $CreateBookmarkResponseCopyWith<$Res> {
  factory _$$CreateBookmarkResponseImplCopyWith(
          _$CreateBookmarkResponseImpl value,
          $Res Function(_$CreateBookmarkResponseImpl) then) =
      __$$CreateBookmarkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateBookmarkResponseData data});

  @override
  $CreateBookmarkResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateBookmarkResponseImplCopyWithImpl<$Res>
    extends _$CreateBookmarkResponseCopyWithImpl<$Res,
        _$CreateBookmarkResponseImpl>
    implements _$$CreateBookmarkResponseImplCopyWith<$Res> {
  __$$CreateBookmarkResponseImplCopyWithImpl(
      _$CreateBookmarkResponseImpl _value,
      $Res Function(_$CreateBookmarkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateBookmarkResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBookmarkResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookmarkResponseImpl implements _CreateBookmarkResponse {
  const _$CreateBookmarkResponseImpl({required this.data});

  factory _$CreateBookmarkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookmarkResponseImplFromJson(json);

  @override
  final CreateBookmarkResponseData data;

  @override
  String toString() {
    return 'CreateBookmarkResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookmarkResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookmarkResponseImplCopyWith<_$CreateBookmarkResponseImpl>
      get copyWith => __$$CreateBookmarkResponseImplCopyWithImpl<
          _$CreateBookmarkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookmarkResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateBookmarkResponse implements CreateBookmarkResponse {
  const factory _CreateBookmarkResponse(
          {required final CreateBookmarkResponseData data}) =
      _$CreateBookmarkResponseImpl;

  factory _CreateBookmarkResponse.fromJson(Map<String, dynamic> json) =
      _$CreateBookmarkResponseImpl.fromJson;

  @override
  CreateBookmarkResponseData get data;

  /// Create a copy of CreateBookmarkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBookmarkResponseImplCopyWith<_$CreateBookmarkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
