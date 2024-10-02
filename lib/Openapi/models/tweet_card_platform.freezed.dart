// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_platform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardPlatform _$TweetCardPlatformFromJson(Map<String, dynamic> json) {
  return _TweetCardPlatform.fromJson(json);
}

/// @nodoc
mixin _$TweetCardPlatform {
  TweetCardPlatformAudience get audience => throw _privateConstructorUsedError;
  TweetCardPlatformDevice get device => throw _privateConstructorUsedError;

  /// Serializes this TweetCardPlatform to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardPlatformCopyWith<TweetCardPlatform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardPlatformCopyWith<$Res> {
  factory $TweetCardPlatformCopyWith(
          TweetCardPlatform value, $Res Function(TweetCardPlatform) then) =
      _$TweetCardPlatformCopyWithImpl<$Res, TweetCardPlatform>;
  @useResult
  $Res call(
      {TweetCardPlatformAudience audience, TweetCardPlatformDevice device});

  $TweetCardPlatformAudienceCopyWith<$Res> get audience;
  $TweetCardPlatformDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$TweetCardPlatformCopyWithImpl<$Res, $Val extends TweetCardPlatform>
    implements $TweetCardPlatformCopyWith<$Res> {
  _$TweetCardPlatformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audience = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      audience: null == audience
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformAudience,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformDevice,
    ) as $Val);
  }

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardPlatformAudienceCopyWith<$Res> get audience {
    return $TweetCardPlatformAudienceCopyWith<$Res>(_value.audience, (value) {
      return _then(_value.copyWith(audience: value) as $Val);
    });
  }

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardPlatformDeviceCopyWith<$Res> get device {
    return $TweetCardPlatformDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetCardPlatformImplCopyWith<$Res>
    implements $TweetCardPlatformCopyWith<$Res> {
  factory _$$TweetCardPlatformImplCopyWith(_$TweetCardPlatformImpl value,
          $Res Function(_$TweetCardPlatformImpl) then) =
      __$$TweetCardPlatformImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TweetCardPlatformAudience audience, TweetCardPlatformDevice device});

  @override
  $TweetCardPlatformAudienceCopyWith<$Res> get audience;
  @override
  $TweetCardPlatformDeviceCopyWith<$Res> get device;
}

/// @nodoc
class __$$TweetCardPlatformImplCopyWithImpl<$Res>
    extends _$TweetCardPlatformCopyWithImpl<$Res, _$TweetCardPlatformImpl>
    implements _$$TweetCardPlatformImplCopyWith<$Res> {
  __$$TweetCardPlatformImplCopyWithImpl(_$TweetCardPlatformImpl _value,
      $Res Function(_$TweetCardPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audience = null,
    Object? device = null,
  }) {
    return _then(_$TweetCardPlatformImpl(
      audience: null == audience
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformAudience,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformDevice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardPlatformImpl implements _TweetCardPlatform {
  const _$TweetCardPlatformImpl({required this.audience, required this.device});

  factory _$TweetCardPlatformImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetCardPlatformImplFromJson(json);

  @override
  final TweetCardPlatformAudience audience;
  @override
  final TweetCardPlatformDevice device;

  @override
  String toString() {
    return 'TweetCardPlatform(audience: $audience, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardPlatformImpl &&
            (identical(other.audience, audience) ||
                other.audience == audience) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, audience, device);

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardPlatformImplCopyWith<_$TweetCardPlatformImpl> get copyWith =>
      __$$TweetCardPlatformImplCopyWithImpl<_$TweetCardPlatformImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardPlatformImplToJson(
      this,
    );
  }
}

abstract class _TweetCardPlatform implements TweetCardPlatform {
  const factory _TweetCardPlatform(
      {required final TweetCardPlatformAudience audience,
      required final TweetCardPlatformDevice device}) = _$TweetCardPlatformImpl;

  factory _TweetCardPlatform.fromJson(Map<String, dynamic> json) =
      _$TweetCardPlatformImpl.fromJson;

  @override
  TweetCardPlatformAudience get audience;
  @override
  TweetCardPlatformDevice get device;

  /// Create a copy of TweetCardPlatform
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardPlatformImplCopyWith<_$TweetCardPlatformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
