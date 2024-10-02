// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_clear_cache.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineClearCache _$TimelineClearCacheFromJson(Map<String, dynamic> json) {
  return _TimelineClearCache.fromJson(json);
}

/// @nodoc
mixin _$TimelineClearCache {
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineClearCache to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineClearCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineClearCacheCopyWith<TimelineClearCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineClearCacheCopyWith<$Res> {
  factory $TimelineClearCacheCopyWith(
          TimelineClearCache value, $Res Function(TimelineClearCache) then) =
      _$TimelineClearCacheCopyWithImpl<$Res, TimelineClearCache>;
  @useResult
  $Res call({InstructionType type});
}

/// @nodoc
class _$TimelineClearCacheCopyWithImpl<$Res, $Val extends TimelineClearCache>
    implements $TimelineClearCacheCopyWith<$Res> {
  _$TimelineClearCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineClearCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineClearCacheImplCopyWith<$Res>
    implements $TimelineClearCacheCopyWith<$Res> {
  factory _$$TimelineClearCacheImplCopyWith(_$TimelineClearCacheImpl value,
          $Res Function(_$TimelineClearCacheImpl) then) =
      __$$TimelineClearCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InstructionType type});
}

/// @nodoc
class __$$TimelineClearCacheImplCopyWithImpl<$Res>
    extends _$TimelineClearCacheCopyWithImpl<$Res, _$TimelineClearCacheImpl>
    implements _$$TimelineClearCacheImplCopyWith<$Res> {
  __$$TimelineClearCacheImplCopyWithImpl(_$TimelineClearCacheImpl _value,
      $Res Function(_$TimelineClearCacheImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineClearCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TimelineClearCacheImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineClearCacheImpl implements _TimelineClearCache {
  const _$TimelineClearCacheImpl({required this.type});

  factory _$TimelineClearCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineClearCacheImplFromJson(json);

  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelineClearCache(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineClearCacheImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of TimelineClearCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineClearCacheImplCopyWith<_$TimelineClearCacheImpl> get copyWith =>
      __$$TimelineClearCacheImplCopyWithImpl<_$TimelineClearCacheImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineClearCacheImplToJson(
      this,
    );
  }
}

abstract class _TimelineClearCache implements TimelineClearCache {
  const factory _TimelineClearCache({required final InstructionType type}) =
      _$TimelineClearCacheImpl;

  factory _TimelineClearCache.fromJson(Map<String, dynamic> json) =
      _$TimelineClearCacheImpl.fromJson;

  @override
  InstructionType get type;

  /// Create a copy of TimelineClearCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineClearCacheImplCopyWith<_$TimelineClearCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
