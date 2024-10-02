// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cta_client_event_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CtaClientEventInfo _$CtaClientEventInfoFromJson(Map<String, dynamic> json) {
  return _CtaClientEventInfo.fromJson(json);
}

/// @nodoc
mixin _$CtaClientEventInfo {
  CtaClientEventInfoAction get action => throw _privateConstructorUsedError;

  /// Serializes this CtaClientEventInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CtaClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CtaClientEventInfoCopyWith<CtaClientEventInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CtaClientEventInfoCopyWith<$Res> {
  factory $CtaClientEventInfoCopyWith(
          CtaClientEventInfo value, $Res Function(CtaClientEventInfo) then) =
      _$CtaClientEventInfoCopyWithImpl<$Res, CtaClientEventInfo>;
  @useResult
  $Res call({CtaClientEventInfoAction action});
}

/// @nodoc
class _$CtaClientEventInfoCopyWithImpl<$Res, $Val extends CtaClientEventInfo>
    implements $CtaClientEventInfoCopyWith<$Res> {
  _$CtaClientEventInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CtaClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CtaClientEventInfoAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CtaClientEventInfoImplCopyWith<$Res>
    implements $CtaClientEventInfoCopyWith<$Res> {
  factory _$$CtaClientEventInfoImplCopyWith(_$CtaClientEventInfoImpl value,
          $Res Function(_$CtaClientEventInfoImpl) then) =
      __$$CtaClientEventInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CtaClientEventInfoAction action});
}

/// @nodoc
class __$$CtaClientEventInfoImplCopyWithImpl<$Res>
    extends _$CtaClientEventInfoCopyWithImpl<$Res, _$CtaClientEventInfoImpl>
    implements _$$CtaClientEventInfoImplCopyWith<$Res> {
  __$$CtaClientEventInfoImplCopyWithImpl(_$CtaClientEventInfoImpl _value,
      $Res Function(_$CtaClientEventInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CtaClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
  }) {
    return _then(_$CtaClientEventInfoImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CtaClientEventInfoAction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CtaClientEventInfoImpl implements _CtaClientEventInfo {
  const _$CtaClientEventInfoImpl({required this.action});

  factory _$CtaClientEventInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CtaClientEventInfoImplFromJson(json);

  @override
  final CtaClientEventInfoAction action;

  @override
  String toString() {
    return 'CtaClientEventInfo(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CtaClientEventInfoImpl &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action);

  /// Create a copy of CtaClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CtaClientEventInfoImplCopyWith<_$CtaClientEventInfoImpl> get copyWith =>
      __$$CtaClientEventInfoImplCopyWithImpl<_$CtaClientEventInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CtaClientEventInfoImplToJson(
      this,
    );
  }
}

abstract class _CtaClientEventInfo implements CtaClientEventInfo {
  const factory _CtaClientEventInfo(
          {required final CtaClientEventInfoAction action}) =
      _$CtaClientEventInfoImpl;

  factory _CtaClientEventInfo.fromJson(Map<String, dynamic> json) =
      _$CtaClientEventInfoImpl.fromJson;

  @override
  CtaClientEventInfoAction get action;

  /// Create a copy of CtaClientEventInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CtaClientEventInfoImplCopyWith<_$CtaClientEventInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
