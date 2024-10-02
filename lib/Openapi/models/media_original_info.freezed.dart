// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_original_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaOriginalInfo _$MediaOriginalInfoFromJson(Map<String, dynamic> json) {
  return _MediaOriginalInfo.fromJson(json);
}

/// @nodoc
mixin _$MediaOriginalInfo {
  @JsonKey(name: 'focus_rects')
  List<MediaOriginalInfoFocusRect> get focusRects =>
      throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  /// Serializes this MediaOriginalInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaOriginalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaOriginalInfoCopyWith<MediaOriginalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaOriginalInfoCopyWith<$Res> {
  factory $MediaOriginalInfoCopyWith(
          MediaOriginalInfo value, $Res Function(MediaOriginalInfo) then) =
      _$MediaOriginalInfoCopyWithImpl<$Res, MediaOriginalInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'focus_rects')
      List<MediaOriginalInfoFocusRect> focusRects,
      int height,
      int width});
}

/// @nodoc
class _$MediaOriginalInfoCopyWithImpl<$Res, $Val extends MediaOriginalInfo>
    implements $MediaOriginalInfoCopyWith<$Res> {
  _$MediaOriginalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaOriginalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusRects = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      focusRects: null == focusRects
          ? _value.focusRects
          : focusRects // ignore: cast_nullable_to_non_nullable
              as List<MediaOriginalInfoFocusRect>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaOriginalInfoImplCopyWith<$Res>
    implements $MediaOriginalInfoCopyWith<$Res> {
  factory _$$MediaOriginalInfoImplCopyWith(_$MediaOriginalInfoImpl value,
          $Res Function(_$MediaOriginalInfoImpl) then) =
      __$$MediaOriginalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'focus_rects')
      List<MediaOriginalInfoFocusRect> focusRects,
      int height,
      int width});
}

/// @nodoc
class __$$MediaOriginalInfoImplCopyWithImpl<$Res>
    extends _$MediaOriginalInfoCopyWithImpl<$Res, _$MediaOriginalInfoImpl>
    implements _$$MediaOriginalInfoImplCopyWith<$Res> {
  __$$MediaOriginalInfoImplCopyWithImpl(_$MediaOriginalInfoImpl _value,
      $Res Function(_$MediaOriginalInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaOriginalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusRects = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$MediaOriginalInfoImpl(
      focusRects: null == focusRects
          ? _value._focusRects
          : focusRects // ignore: cast_nullable_to_non_nullable
              as List<MediaOriginalInfoFocusRect>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaOriginalInfoImpl implements _MediaOriginalInfo {
  const _$MediaOriginalInfoImpl(
      {@JsonKey(name: 'focus_rects')
      required final List<MediaOriginalInfoFocusRect> focusRects,
      required this.height,
      required this.width})
      : _focusRects = focusRects;

  factory _$MediaOriginalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaOriginalInfoImplFromJson(json);

  final List<MediaOriginalInfoFocusRect> _focusRects;
  @override
  @JsonKey(name: 'focus_rects')
  List<MediaOriginalInfoFocusRect> get focusRects {
    if (_focusRects is EqualUnmodifiableListView) return _focusRects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_focusRects);
  }

  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'MediaOriginalInfo(focusRects: $focusRects, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaOriginalInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._focusRects, _focusRects) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_focusRects), height, width);

  /// Create a copy of MediaOriginalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaOriginalInfoImplCopyWith<_$MediaOriginalInfoImpl> get copyWith =>
      __$$MediaOriginalInfoImplCopyWithImpl<_$MediaOriginalInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaOriginalInfoImplToJson(
      this,
    );
  }
}

abstract class _MediaOriginalInfo implements MediaOriginalInfo {
  const factory _MediaOriginalInfo(
      {@JsonKey(name: 'focus_rects')
      required final List<MediaOriginalInfoFocusRect> focusRects,
      required final int height,
      required final int width}) = _$MediaOriginalInfoImpl;

  factory _MediaOriginalInfo.fromJson(Map<String, dynamic> json) =
      _$MediaOriginalInfoImpl.fromJson;

  @override
  @JsonKey(name: 'focus_rects')
  List<MediaOriginalInfoFocusRect> get focusRects;
  @override
  int get height;
  @override
  int get width;

  /// Create a copy of MediaOriginalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaOriginalInfoImplCopyWith<_$MediaOriginalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
