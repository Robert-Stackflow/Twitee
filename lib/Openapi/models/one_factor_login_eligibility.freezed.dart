// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_factor_login_eligibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneFactorLoginEligibility _$OneFactorLoginEligibilityFromJson(
    Map<String, dynamic> json) {
  return _OneFactorLoginEligibility.fromJson(json);
}

/// @nodoc
mixin _$OneFactorLoginEligibility {
  String get fetchStatus => throw _privateConstructorUsedError;

  /// Serializes this OneFactorLoginEligibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneFactorLoginEligibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneFactorLoginEligibilityCopyWith<OneFactorLoginEligibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneFactorLoginEligibilityCopyWith<$Res> {
  factory $OneFactorLoginEligibilityCopyWith(OneFactorLoginEligibility value,
          $Res Function(OneFactorLoginEligibility) then) =
      _$OneFactorLoginEligibilityCopyWithImpl<$Res, OneFactorLoginEligibility>;
  @useResult
  $Res call({String fetchStatus});
}

/// @nodoc
class _$OneFactorLoginEligibilityCopyWithImpl<$Res,
        $Val extends OneFactorLoginEligibility>
    implements $OneFactorLoginEligibilityCopyWith<$Res> {
  _$OneFactorLoginEligibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneFactorLoginEligibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
  }) {
    return _then(_value.copyWith(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneFactorLoginEligibilityImplCopyWith<$Res>
    implements $OneFactorLoginEligibilityCopyWith<$Res> {
  factory _$$OneFactorLoginEligibilityImplCopyWith(
          _$OneFactorLoginEligibilityImpl value,
          $Res Function(_$OneFactorLoginEligibilityImpl) then) =
      __$$OneFactorLoginEligibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fetchStatus});
}

/// @nodoc
class __$$OneFactorLoginEligibilityImplCopyWithImpl<$Res>
    extends _$OneFactorLoginEligibilityCopyWithImpl<$Res,
        _$OneFactorLoginEligibilityImpl>
    implements _$$OneFactorLoginEligibilityImplCopyWith<$Res> {
  __$$OneFactorLoginEligibilityImplCopyWithImpl(
      _$OneFactorLoginEligibilityImpl _value,
      $Res Function(_$OneFactorLoginEligibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneFactorLoginEligibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
  }) {
    return _then(_$OneFactorLoginEligibilityImpl(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneFactorLoginEligibilityImpl implements _OneFactorLoginEligibility {
  const _$OneFactorLoginEligibilityImpl({required this.fetchStatus});

  factory _$OneFactorLoginEligibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneFactorLoginEligibilityImplFromJson(json);

  @override
  final String fetchStatus;

  @override
  String toString() {
    return 'OneFactorLoginEligibility(fetchStatus: $fetchStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneFactorLoginEligibilityImpl &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus);

  /// Create a copy of OneFactorLoginEligibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneFactorLoginEligibilityImplCopyWith<_$OneFactorLoginEligibilityImpl>
      get copyWith => __$$OneFactorLoginEligibilityImplCopyWithImpl<
          _$OneFactorLoginEligibilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneFactorLoginEligibilityImplToJson(
      this,
    );
  }
}

abstract class _OneFactorLoginEligibility implements OneFactorLoginEligibility {
  const factory _OneFactorLoginEligibility(
      {required final String fetchStatus}) = _$OneFactorLoginEligibilityImpl;

  factory _OneFactorLoginEligibility.fromJson(Map<String, dynamic> json) =
      _$OneFactorLoginEligibilityImpl.fromJson;

  @override
  String get fetchStatus;

  /// Create a copy of OneFactorLoginEligibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneFactorLoginEligibilityImplCopyWith<_$OneFactorLoginEligibilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
