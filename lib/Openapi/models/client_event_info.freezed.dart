// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_event_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientEventInfo _$ClientEventInfoFromJson(Map<String, dynamic> json) {
  return _ClientEventInfo.fromJson(json);
}

/// @nodoc
mixin _$ClientEventInfo {
  String get component => throw _privateConstructorUsedError;
  dynamic get details => throw _privateConstructorUsedError;
  String get element => throw _privateConstructorUsedError;

  /// Serializes this ClientEventInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientEventInfoCopyWith<ClientEventInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventInfoCopyWith<$Res> {
  factory $ClientEventInfoCopyWith(
          ClientEventInfo value, $Res Function(ClientEventInfo) then) =
      _$ClientEventInfoCopyWithImpl<$Res, ClientEventInfo>;
  @useResult
  $Res call({String component, dynamic details, String element});
}

/// @nodoc
class _$ClientEventInfoCopyWithImpl<$Res, $Val extends ClientEventInfo>
    implements $ClientEventInfoCopyWith<$Res> {
  _$ClientEventInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? component = null,
    Object? details = freezed,
    Object? element = null,
  }) {
    return _then(_value.copyWith(
      component: null == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientEventInfoImplCopyWith<$Res>
    implements $ClientEventInfoCopyWith<$Res> {
  factory _$$ClientEventInfoImplCopyWith(_$ClientEventInfoImpl value,
          $Res Function(_$ClientEventInfoImpl) then) =
      __$$ClientEventInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String component, dynamic details, String element});
}

/// @nodoc
class __$$ClientEventInfoImplCopyWithImpl<$Res>
    extends _$ClientEventInfoCopyWithImpl<$Res, _$ClientEventInfoImpl>
    implements _$$ClientEventInfoImplCopyWith<$Res> {
  __$$ClientEventInfoImplCopyWithImpl(
      _$ClientEventInfoImpl _value, $Res Function(_$ClientEventInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? component = null,
    Object? details = freezed,
    Object? element = null,
  }) {
    return _then(_$ClientEventInfoImpl(
      component: null == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientEventInfoImpl implements _ClientEventInfo {
  const _$ClientEventInfoImpl(
      {required this.component, required this.details, required this.element});

  factory _$ClientEventInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientEventInfoImplFromJson(json);

  @override
  final String component;
  @override
  final dynamic details;
  @override
  final String element;

  @override
  String toString() {
    return 'ClientEventInfo(component: $component, details: $details, element: $element)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEventInfoImpl &&
            (identical(other.component, component) ||
                other.component == component) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            (identical(other.element, element) || other.element == element));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, component,
      const DeepCollectionEquality().hash(details), element);

  /// Create a copy of ClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEventInfoImplCopyWith<_$ClientEventInfoImpl> get copyWith =>
      __$$ClientEventInfoImplCopyWithImpl<_$ClientEventInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientEventInfoImplToJson(
      this,
    );
  }
}

abstract class _ClientEventInfo implements ClientEventInfo {
  const factory _ClientEventInfo(
      {required final String component,
      required final dynamic details,
      required final String element}) = _$ClientEventInfoImpl;

  factory _ClientEventInfo.fromJson(Map<String, dynamic> json) =
      _$ClientEventInfoImpl.fromJson;

  @override
  String get component;
  @override
  dynamic get details;
  @override
  String get element;

  /// Create a copy of ClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientEventInfoImplCopyWith<_$ClientEventInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
