// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_platform_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardPlatformDevice _$TweetCardPlatformDeviceFromJson(
    Map<String, dynamic> json) {
  return _TweetCardPlatformDevice.fromJson(json);
}

/// @nodoc
mixin _$TweetCardPlatformDevice {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Serializes this TweetCardPlatformDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardPlatformDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardPlatformDeviceCopyWith<TweetCardPlatformDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardPlatformDeviceCopyWith<$Res> {
  factory $TweetCardPlatformDeviceCopyWith(TweetCardPlatformDevice value,
          $Res Function(TweetCardPlatformDevice) then) =
      _$TweetCardPlatformDeviceCopyWithImpl<$Res, TweetCardPlatformDevice>;
  @useResult
  $Res call({String name, String version});
}

/// @nodoc
class _$TweetCardPlatformDeviceCopyWithImpl<$Res,
        $Val extends TweetCardPlatformDevice>
    implements $TweetCardPlatformDeviceCopyWith<$Res> {
  _$TweetCardPlatformDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardPlatformDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetCardPlatformDeviceImplCopyWith<$Res>
    implements $TweetCardPlatformDeviceCopyWith<$Res> {
  factory _$$TweetCardPlatformDeviceImplCopyWith(
          _$TweetCardPlatformDeviceImpl value,
          $Res Function(_$TweetCardPlatformDeviceImpl) then) =
      __$$TweetCardPlatformDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String version});
}

/// @nodoc
class __$$TweetCardPlatformDeviceImplCopyWithImpl<$Res>
    extends _$TweetCardPlatformDeviceCopyWithImpl<$Res,
        _$TweetCardPlatformDeviceImpl>
    implements _$$TweetCardPlatformDeviceImplCopyWith<$Res> {
  __$$TweetCardPlatformDeviceImplCopyWithImpl(
      _$TweetCardPlatformDeviceImpl _value,
      $Res Function(_$TweetCardPlatformDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardPlatformDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
  }) {
    return _then(_$TweetCardPlatformDeviceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardPlatformDeviceImpl implements _TweetCardPlatformDevice {
  const _$TweetCardPlatformDeviceImpl(
      {required this.name, required this.version});

  factory _$TweetCardPlatformDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetCardPlatformDeviceImplFromJson(json);

  @override
  final String name;
  @override
  final String version;

  @override
  String toString() {
    return 'TweetCardPlatformDevice(name: $name, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardPlatformDeviceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, version);

  /// Create a copy of TweetCardPlatformDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardPlatformDeviceImplCopyWith<_$TweetCardPlatformDeviceImpl>
      get copyWith => __$$TweetCardPlatformDeviceImplCopyWithImpl<
          _$TweetCardPlatformDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardPlatformDeviceImplToJson(
      this,
    );
  }
}

abstract class _TweetCardPlatformDevice implements TweetCardPlatformDevice {
  const factory _TweetCardPlatformDevice(
      {required final String name,
      required final String version}) = _$TweetCardPlatformDeviceImpl;

  factory _TweetCardPlatformDevice.fromJson(Map<String, dynamic> json) =
      _$TweetCardPlatformDeviceImpl.fromJson;

  @override
  String get name;
  @override
  String get version;

  /// Create a copy of TweetCardPlatformDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardPlatformDeviceImplCopyWith<_$TweetCardPlatformDeviceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
