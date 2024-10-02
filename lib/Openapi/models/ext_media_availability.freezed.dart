// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ext_media_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtMediaAvailability _$ExtMediaAvailabilityFromJson(Map<String, dynamic> json) {
  return _ExtMediaAvailability.fromJson(json);
}

/// @nodoc
mixin _$ExtMediaAvailability {
  String get reason => throw _privateConstructorUsedError;
  ExtMediaAvailabilityStatus get status => throw _privateConstructorUsedError;

  /// Serializes this ExtMediaAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtMediaAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtMediaAvailabilityCopyWith<ExtMediaAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtMediaAvailabilityCopyWith<$Res> {
  factory $ExtMediaAvailabilityCopyWith(ExtMediaAvailability value,
          $Res Function(ExtMediaAvailability) then) =
      _$ExtMediaAvailabilityCopyWithImpl<$Res, ExtMediaAvailability>;
  @useResult
  $Res call({String reason, ExtMediaAvailabilityStatus status});
}

/// @nodoc
class _$ExtMediaAvailabilityCopyWithImpl<$Res,
        $Val extends ExtMediaAvailability>
    implements $ExtMediaAvailabilityCopyWith<$Res> {
  _$ExtMediaAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtMediaAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExtMediaAvailabilityStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtMediaAvailabilityImplCopyWith<$Res>
    implements $ExtMediaAvailabilityCopyWith<$Res> {
  factory _$$ExtMediaAvailabilityImplCopyWith(_$ExtMediaAvailabilityImpl value,
          $Res Function(_$ExtMediaAvailabilityImpl) then) =
      __$$ExtMediaAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, ExtMediaAvailabilityStatus status});
}

/// @nodoc
class __$$ExtMediaAvailabilityImplCopyWithImpl<$Res>
    extends _$ExtMediaAvailabilityCopyWithImpl<$Res, _$ExtMediaAvailabilityImpl>
    implements _$$ExtMediaAvailabilityImplCopyWith<$Res> {
  __$$ExtMediaAvailabilityImplCopyWithImpl(_$ExtMediaAvailabilityImpl _value,
      $Res Function(_$ExtMediaAvailabilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtMediaAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? status = null,
  }) {
    return _then(_$ExtMediaAvailabilityImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExtMediaAvailabilityStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtMediaAvailabilityImpl implements _ExtMediaAvailability {
  const _$ExtMediaAvailabilityImpl(
      {required this.reason, required this.status});

  factory _$ExtMediaAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtMediaAvailabilityImplFromJson(json);

  @override
  final String reason;
  @override
  final ExtMediaAvailabilityStatus status;

  @override
  String toString() {
    return 'ExtMediaAvailability(reason: $reason, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtMediaAvailabilityImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, status);

  /// Create a copy of ExtMediaAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtMediaAvailabilityImplCopyWith<_$ExtMediaAvailabilityImpl>
      get copyWith =>
          __$$ExtMediaAvailabilityImplCopyWithImpl<_$ExtMediaAvailabilityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtMediaAvailabilityImplToJson(
      this,
    );
  }
}

abstract class _ExtMediaAvailability implements ExtMediaAvailability {
  const factory _ExtMediaAvailability(
          {required final String reason,
          required final ExtMediaAvailabilityStatus status}) =
      _$ExtMediaAvailabilityImpl;

  factory _ExtMediaAvailability.fromJson(Map<String, dynamic> json) =
      _$ExtMediaAvailabilityImpl.fromJson;

  @override
  String get reason;
  @override
  ExtMediaAvailabilityStatus get status;

  /// Create a copy of ExtMediaAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtMediaAvailabilityImplCopyWith<_$ExtMediaAvailabilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
