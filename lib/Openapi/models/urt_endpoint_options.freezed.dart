// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urt_endpoint_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UrtEndpointOptions _$UrtEndpointOptionsFromJson(Map<String, dynamic> json) {
  return _UrtEndpointOptions.fromJson(json);
}

/// @nodoc
mixin _$UrtEndpointOptions {
  List<UrtEndpointRequestParams> get requestParams =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this UrtEndpointOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrtEndpointOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrtEndpointOptionsCopyWith<UrtEndpointOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrtEndpointOptionsCopyWith<$Res> {
  factory $UrtEndpointOptionsCopyWith(
          UrtEndpointOptions value, $Res Function(UrtEndpointOptions) then) =
      _$UrtEndpointOptionsCopyWithImpl<$Res, UrtEndpointOptions>;
  @useResult
  $Res call({List<UrtEndpointRequestParams> requestParams, String title});
}

/// @nodoc
class _$UrtEndpointOptionsCopyWithImpl<$Res, $Val extends UrtEndpointOptions>
    implements $UrtEndpointOptionsCopyWith<$Res> {
  _$UrtEndpointOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrtEndpointOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParams = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      requestParams: null == requestParams
          ? _value.requestParams
          : requestParams // ignore: cast_nullable_to_non_nullable
              as List<UrtEndpointRequestParams>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrtEndpointOptionsImplCopyWith<$Res>
    implements $UrtEndpointOptionsCopyWith<$Res> {
  factory _$$UrtEndpointOptionsImplCopyWith(_$UrtEndpointOptionsImpl value,
          $Res Function(_$UrtEndpointOptionsImpl) then) =
      __$$UrtEndpointOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UrtEndpointRequestParams> requestParams, String title});
}

/// @nodoc
class __$$UrtEndpointOptionsImplCopyWithImpl<$Res>
    extends _$UrtEndpointOptionsCopyWithImpl<$Res, _$UrtEndpointOptionsImpl>
    implements _$$UrtEndpointOptionsImplCopyWith<$Res> {
  __$$UrtEndpointOptionsImplCopyWithImpl(_$UrtEndpointOptionsImpl _value,
      $Res Function(_$UrtEndpointOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UrtEndpointOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParams = null,
    Object? title = null,
  }) {
    return _then(_$UrtEndpointOptionsImpl(
      requestParams: null == requestParams
          ? _value._requestParams
          : requestParams // ignore: cast_nullable_to_non_nullable
              as List<UrtEndpointRequestParams>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrtEndpointOptionsImpl implements _UrtEndpointOptions {
  const _$UrtEndpointOptionsImpl(
      {required final List<UrtEndpointRequestParams> requestParams,
      required this.title})
      : _requestParams = requestParams;

  factory _$UrtEndpointOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrtEndpointOptionsImplFromJson(json);

  final List<UrtEndpointRequestParams> _requestParams;
  @override
  List<UrtEndpointRequestParams> get requestParams {
    if (_requestParams is EqualUnmodifiableListView) return _requestParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requestParams);
  }

  @override
  final String title;

  @override
  String toString() {
    return 'UrtEndpointOptions(requestParams: $requestParams, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrtEndpointOptionsImpl &&
            const DeepCollectionEquality()
                .equals(other._requestParams, _requestParams) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_requestParams), title);

  /// Create a copy of UrtEndpointOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrtEndpointOptionsImplCopyWith<_$UrtEndpointOptionsImpl> get copyWith =>
      __$$UrtEndpointOptionsImplCopyWithImpl<_$UrtEndpointOptionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrtEndpointOptionsImplToJson(
      this,
    );
  }
}

abstract class _UrtEndpointOptions implements UrtEndpointOptions {
  const factory _UrtEndpointOptions(
      {required final List<UrtEndpointRequestParams> requestParams,
      required final String title}) = _$UrtEndpointOptionsImpl;

  factory _UrtEndpointOptions.fromJson(Map<String, dynamic> json) =
      _$UrtEndpointOptionsImpl.fromJson;

  @override
  List<UrtEndpointRequestParams> get requestParams;
  @override
  String get title;

  /// Create a copy of UrtEndpointOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrtEndpointOptionsImplCopyWith<_$UrtEndpointOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
