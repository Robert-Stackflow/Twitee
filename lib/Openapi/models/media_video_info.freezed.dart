// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaVideoInfo _$MediaVideoInfoFromJson(Map<String, dynamic> json) {
  return _MediaVideoInfo.fromJson(json);
}

/// @nodoc
mixin _$MediaVideoInfo {
  @JsonKey(name: 'aspect_ratio')
  List<int> get aspectRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_millis')
  int get durationMillis => throw _privateConstructorUsedError;
  List<MediaVideoInfoVariant> get variants =>
      throw _privateConstructorUsedError;

  /// Serializes this MediaVideoInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaVideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaVideoInfoCopyWith<MediaVideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaVideoInfoCopyWith<$Res> {
  factory $MediaVideoInfoCopyWith(
          MediaVideoInfo value, $Res Function(MediaVideoInfo) then) =
      _$MediaVideoInfoCopyWithImpl<$Res, MediaVideoInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'aspect_ratio') List<int> aspectRatio,
      @JsonKey(name: 'duration_millis') int durationMillis,
      List<MediaVideoInfoVariant> variants});
}

/// @nodoc
class _$MediaVideoInfoCopyWithImpl<$Res, $Val extends MediaVideoInfo>
    implements $MediaVideoInfoCopyWith<$Res> {
  _$MediaVideoInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaVideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = null,
    Object? durationMillis = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as List<int>,
      durationMillis: null == durationMillis
          ? _value.durationMillis
          : durationMillis // ignore: cast_nullable_to_non_nullable
              as int,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<MediaVideoInfoVariant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaVideoInfoImplCopyWith<$Res>
    implements $MediaVideoInfoCopyWith<$Res> {
  factory _$$MediaVideoInfoImplCopyWith(_$MediaVideoInfoImpl value,
          $Res Function(_$MediaVideoInfoImpl) then) =
      __$$MediaVideoInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'aspect_ratio') List<int> aspectRatio,
      @JsonKey(name: 'duration_millis') int durationMillis,
      List<MediaVideoInfoVariant> variants});
}

/// @nodoc
class __$$MediaVideoInfoImplCopyWithImpl<$Res>
    extends _$MediaVideoInfoCopyWithImpl<$Res, _$MediaVideoInfoImpl>
    implements _$$MediaVideoInfoImplCopyWith<$Res> {
  __$$MediaVideoInfoImplCopyWithImpl(
      _$MediaVideoInfoImpl _value, $Res Function(_$MediaVideoInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaVideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = null,
    Object? durationMillis = null,
    Object? variants = null,
  }) {
    return _then(_$MediaVideoInfoImpl(
      aspectRatio: null == aspectRatio
          ? _value._aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as List<int>,
      durationMillis: null == durationMillis
          ? _value.durationMillis
          : durationMillis // ignore: cast_nullable_to_non_nullable
              as int,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<MediaVideoInfoVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaVideoInfoImpl implements _MediaVideoInfo {
  const _$MediaVideoInfoImpl(
      {@JsonKey(name: 'aspect_ratio') required final List<int> aspectRatio,
      @JsonKey(name: 'duration_millis') required this.durationMillis,
      required final List<MediaVideoInfoVariant> variants})
      : _aspectRatio = aspectRatio,
        _variants = variants;

  factory _$MediaVideoInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaVideoInfoImplFromJson(json);

  final List<int> _aspectRatio;
  @override
  @JsonKey(name: 'aspect_ratio')
  List<int> get aspectRatio {
    if (_aspectRatio is EqualUnmodifiableListView) return _aspectRatio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aspectRatio);
  }

  @override
  @JsonKey(name: 'duration_millis')
  final int durationMillis;
  final List<MediaVideoInfoVariant> _variants;
  @override
  List<MediaVideoInfoVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'MediaVideoInfo(aspectRatio: $aspectRatio, durationMillis: $durationMillis, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaVideoInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._aspectRatio, _aspectRatio) &&
            (identical(other.durationMillis, durationMillis) ||
                other.durationMillis == durationMillis) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_aspectRatio),
      durationMillis,
      const DeepCollectionEquality().hash(_variants));

  /// Create a copy of MediaVideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaVideoInfoImplCopyWith<_$MediaVideoInfoImpl> get copyWith =>
      __$$MediaVideoInfoImplCopyWithImpl<_$MediaVideoInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaVideoInfoImplToJson(
      this,
    );
  }
}

abstract class _MediaVideoInfo implements MediaVideoInfo {
  const factory _MediaVideoInfo(
          {@JsonKey(name: 'aspect_ratio') required final List<int> aspectRatio,
          @JsonKey(name: 'duration_millis') required final int durationMillis,
          required final List<MediaVideoInfoVariant> variants}) =
      _$MediaVideoInfoImpl;

  factory _MediaVideoInfo.fromJson(Map<String, dynamic> json) =
      _$MediaVideoInfoImpl.fromJson;

  @override
  @JsonKey(name: 'aspect_ratio')
  List<int> get aspectRatio;
  @override
  @JsonKey(name: 'duration_millis')
  int get durationMillis;
  @override
  List<MediaVideoInfoVariant> get variants;

  /// Create a copy of MediaVideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaVideoInfoImplCopyWith<_$MediaVideoInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
