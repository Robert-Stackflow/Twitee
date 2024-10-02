// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_platform_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardPlatformData _$TweetCardPlatformDataFromJson(
    Map<String, dynamic> json) {
  return _TweetCardPlatformData.fromJson(json);
}

/// @nodoc
mixin _$TweetCardPlatformData {
  TweetCardPlatform get platform => throw _privateConstructorUsedError;

  /// Serializes this TweetCardPlatformData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardPlatformData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardPlatformDataCopyWith<TweetCardPlatformData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardPlatformDataCopyWith<$Res> {
  factory $TweetCardPlatformDataCopyWith(TweetCardPlatformData value,
          $Res Function(TweetCardPlatformData) then) =
      _$TweetCardPlatformDataCopyWithImpl<$Res, TweetCardPlatformData>;
  @useResult
  $Res call({TweetCardPlatform platform});

  $TweetCardPlatformCopyWith<$Res> get platform;
}

/// @nodoc
class _$TweetCardPlatformDataCopyWithImpl<$Res,
        $Val extends TweetCardPlatformData>
    implements $TweetCardPlatformDataCopyWith<$Res> {
  _$TweetCardPlatformDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardPlatformData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatform,
    ) as $Val);
  }

  /// Create a copy of TweetCardPlatformData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardPlatformCopyWith<$Res> get platform {
    return $TweetCardPlatformCopyWith<$Res>(_value.platform, (value) {
      return _then(_value.copyWith(platform: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetCardPlatformDataImplCopyWith<$Res>
    implements $TweetCardPlatformDataCopyWith<$Res> {
  factory _$$TweetCardPlatformDataImplCopyWith(
          _$TweetCardPlatformDataImpl value,
          $Res Function(_$TweetCardPlatformDataImpl) then) =
      __$$TweetCardPlatformDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetCardPlatform platform});

  @override
  $TweetCardPlatformCopyWith<$Res> get platform;
}

/// @nodoc
class __$$TweetCardPlatformDataImplCopyWithImpl<$Res>
    extends _$TweetCardPlatformDataCopyWithImpl<$Res,
        _$TweetCardPlatformDataImpl>
    implements _$$TweetCardPlatformDataImplCopyWith<$Res> {
  __$$TweetCardPlatformDataImplCopyWithImpl(_$TweetCardPlatformDataImpl _value,
      $Res Function(_$TweetCardPlatformDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardPlatformData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
  }) {
    return _then(_$TweetCardPlatformDataImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatform,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardPlatformDataImpl implements _TweetCardPlatformData {
  const _$TweetCardPlatformDataImpl({required this.platform});

  factory _$TweetCardPlatformDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetCardPlatformDataImplFromJson(json);

  @override
  final TweetCardPlatform platform;

  @override
  String toString() {
    return 'TweetCardPlatformData(platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardPlatformDataImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, platform);

  /// Create a copy of TweetCardPlatformData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardPlatformDataImplCopyWith<_$TweetCardPlatformDataImpl>
      get copyWith => __$$TweetCardPlatformDataImplCopyWithImpl<
          _$TweetCardPlatformDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardPlatformDataImplToJson(
      this,
    );
  }
}

abstract class _TweetCardPlatformData implements TweetCardPlatformData {
  const factory _TweetCardPlatformData(
          {required final TweetCardPlatform platform}) =
      _$TweetCardPlatformDataImpl;

  factory _TweetCardPlatformData.fromJson(Map<String, dynamic> json) =
      _$TweetCardPlatformDataImpl.fromJson;

  @override
  TweetCardPlatform get platform;

  /// Create a copy of TweetCardPlatformData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardPlatformDataImplCopyWith<_$TweetCardPlatformDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
