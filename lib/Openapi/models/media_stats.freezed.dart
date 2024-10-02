// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaStats _$MediaStatsFromJson(Map<String, dynamic> json) {
  return _MediaStats.fromJson(json);
}

/// @nodoc
mixin _$MediaStats {
  int get viewCount => throw _privateConstructorUsedError;

  /// Serializes this MediaStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaStatsCopyWith<MediaStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStatsCopyWith<$Res> {
  factory $MediaStatsCopyWith(
          MediaStats value, $Res Function(MediaStats) then) =
      _$MediaStatsCopyWithImpl<$Res, MediaStats>;
  @useResult
  $Res call({int viewCount});
}

/// @nodoc
class _$MediaStatsCopyWithImpl<$Res, $Val extends MediaStats>
    implements $MediaStatsCopyWith<$Res> {
  _$MediaStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
  }) {
    return _then(_value.copyWith(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaStatsImplCopyWith<$Res>
    implements $MediaStatsCopyWith<$Res> {
  factory _$$MediaStatsImplCopyWith(
          _$MediaStatsImpl value, $Res Function(_$MediaStatsImpl) then) =
      __$$MediaStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int viewCount});
}

/// @nodoc
class __$$MediaStatsImplCopyWithImpl<$Res>
    extends _$MediaStatsCopyWithImpl<$Res, _$MediaStatsImpl>
    implements _$$MediaStatsImplCopyWith<$Res> {
  __$$MediaStatsImplCopyWithImpl(
      _$MediaStatsImpl _value, $Res Function(_$MediaStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
  }) {
    return _then(_$MediaStatsImpl(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaStatsImpl implements _MediaStats {
  const _$MediaStatsImpl({required this.viewCount});

  factory _$MediaStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaStatsImplFromJson(json);

  @override
  final int viewCount;

  @override
  String toString() {
    return 'MediaStats(viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaStatsImpl &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, viewCount);

  /// Create a copy of MediaStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaStatsImplCopyWith<_$MediaStatsImpl> get copyWith =>
      __$$MediaStatsImplCopyWithImpl<_$MediaStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaStatsImplToJson(
      this,
    );
  }
}

abstract class _MediaStats implements MediaStats {
  const factory _MediaStats({required final int viewCount}) = _$MediaStatsImpl;

  factory _MediaStats.fromJson(Map<String, dynamic> json) =
      _$MediaStatsImpl.fromJson;

  @override
  int get viewCount;

  /// Create a copy of MediaStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaStatsImplCopyWith<_$MediaStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
