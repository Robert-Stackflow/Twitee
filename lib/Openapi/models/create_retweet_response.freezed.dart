// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_retweet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRetweetResponse _$CreateRetweetResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateRetweetResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateRetweetResponse {
  CreateRetweetResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this CreateRetweetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRetweetResponseCopyWith<CreateRetweetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRetweetResponseCopyWith<$Res> {
  factory $CreateRetweetResponseCopyWith(CreateRetweetResponse value,
          $Res Function(CreateRetweetResponse) then) =
      _$CreateRetweetResponseCopyWithImpl<$Res, CreateRetweetResponse>;
  @useResult
  $Res call({CreateRetweetResponseData data});

  $CreateRetweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateRetweetResponseCopyWithImpl<$Res,
        $Val extends CreateRetweetResponse>
    implements $CreateRetweetResponseCopyWith<$Res> {
  _$CreateRetweetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRetweetResponse
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
              as CreateRetweetResponseData,
    ) as $Val);
  }

  /// Create a copy of CreateRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateRetweetResponseDataCopyWith<$Res> get data {
    return $CreateRetweetResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateRetweetResponseImplCopyWith<$Res>
    implements $CreateRetweetResponseCopyWith<$Res> {
  factory _$$CreateRetweetResponseImplCopyWith(
          _$CreateRetweetResponseImpl value,
          $Res Function(_$CreateRetweetResponseImpl) then) =
      __$$CreateRetweetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateRetweetResponseData data});

  @override
  $CreateRetweetResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateRetweetResponseImplCopyWithImpl<$Res>
    extends _$CreateRetweetResponseCopyWithImpl<$Res,
        _$CreateRetweetResponseImpl>
    implements _$$CreateRetweetResponseImplCopyWith<$Res> {
  __$$CreateRetweetResponseImplCopyWithImpl(_$CreateRetweetResponseImpl _value,
      $Res Function(_$CreateRetweetResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateRetweetResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateRetweetResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRetweetResponseImpl implements _CreateRetweetResponse {
  const _$CreateRetweetResponseImpl({required this.data});

  factory _$CreateRetweetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRetweetResponseImplFromJson(json);

  @override
  final CreateRetweetResponseData data;

  @override
  String toString() {
    return 'CreateRetweetResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRetweetResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRetweetResponseImplCopyWith<_$CreateRetweetResponseImpl>
      get copyWith => __$$CreateRetweetResponseImplCopyWithImpl<
          _$CreateRetweetResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRetweetResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateRetweetResponse implements CreateRetweetResponse {
  const factory _CreateRetweetResponse(
          {required final CreateRetweetResponseData data}) =
      _$CreateRetweetResponseImpl;

  factory _CreateRetweetResponse.fromJson(Map<String, dynamic> json) =
      _$CreateRetweetResponseImpl.fromJson;

  @override
  CreateRetweetResponseData get data;

  /// Create a copy of CreateRetweetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRetweetResponseImplCopyWith<_$CreateRetweetResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
