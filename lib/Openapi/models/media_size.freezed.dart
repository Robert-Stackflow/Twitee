// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaSize _$MediaSizeFromJson(Map<String, dynamic> json) {
  return _MediaSize.fromJson(json);
}

/// @nodoc
mixin _$MediaSize {
  int get h => throw _privateConstructorUsedError;
  MediaSizeResize get resize => throw _privateConstructorUsedError;
  int get w => throw _privateConstructorUsedError;

  /// Serializes this MediaSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaSizeCopyWith<MediaSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaSizeCopyWith<$Res> {
  factory $MediaSizeCopyWith(MediaSize value, $Res Function(MediaSize) then) =
      _$MediaSizeCopyWithImpl<$Res, MediaSize>;
  @useResult
  $Res call({int h, MediaSizeResize resize, int w});
}

/// @nodoc
class _$MediaSizeCopyWithImpl<$Res, $Val extends MediaSize>
    implements $MediaSizeCopyWith<$Res> {
  _$MediaSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? h = null,
    Object? resize = null,
    Object? w = null,
  }) {
    return _then(_value.copyWith(
      h: null == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as int,
      resize: null == resize
          ? _value.resize
          : resize // ignore: cast_nullable_to_non_nullable
              as MediaSizeResize,
      w: null == w
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaSizeImplCopyWith<$Res>
    implements $MediaSizeCopyWith<$Res> {
  factory _$$MediaSizeImplCopyWith(
          _$MediaSizeImpl value, $Res Function(_$MediaSizeImpl) then) =
      __$$MediaSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int h, MediaSizeResize resize, int w});
}

/// @nodoc
class __$$MediaSizeImplCopyWithImpl<$Res>
    extends _$MediaSizeCopyWithImpl<$Res, _$MediaSizeImpl>
    implements _$$MediaSizeImplCopyWith<$Res> {
  __$$MediaSizeImplCopyWithImpl(
      _$MediaSizeImpl _value, $Res Function(_$MediaSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? h = null,
    Object? resize = null,
    Object? w = null,
  }) {
    return _then(_$MediaSizeImpl(
      h: null == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as int,
      resize: null == resize
          ? _value.resize
          : resize // ignore: cast_nullable_to_non_nullable
              as MediaSizeResize,
      w: null == w
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaSizeImpl implements _MediaSize {
  const _$MediaSizeImpl(
      {required this.h, required this.resize, required this.w});

  factory _$MediaSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaSizeImplFromJson(json);

  @override
  final int h;
  @override
  final MediaSizeResize resize;
  @override
  final int w;

  @override
  String toString() {
    return 'MediaSize(h: $h, resize: $resize, w: $w)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaSizeImpl &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.resize, resize) || other.resize == resize) &&
            (identical(other.w, w) || other.w == w));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, h, resize, w);

  /// Create a copy of MediaSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaSizeImplCopyWith<_$MediaSizeImpl> get copyWith =>
      __$$MediaSizeImplCopyWithImpl<_$MediaSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaSizeImplToJson(
      this,
    );
  }
}

abstract class _MediaSize implements MediaSize {
  const factory _MediaSize(
      {required final int h,
      required final MediaSizeResize resize,
      required final int w}) = _$MediaSizeImpl;

  factory _MediaSize.fromJson(Map<String, dynamic> json) =
      _$MediaSizeImpl.fromJson;

  @override
  int get h;
  @override
  MediaSizeResize get resize;
  @override
  int get w;

  /// Create a copy of MediaSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaSizeImplCopyWith<_$MediaSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
