// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_cover_media_color_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleCoverMediaColorInfo _$ArticleCoverMediaColorInfoFromJson(
    Map<String, dynamic> json) {
  return _ArticleCoverMediaColorInfo.fromJson(json);
}

/// @nodoc
mixin _$ArticleCoverMediaColorInfo {
  List<ArticleCoverMediaColorInfoPalette> get palette =>
      throw _privateConstructorUsedError;

  /// Serializes this ArticleCoverMediaColorInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleCoverMediaColorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCoverMediaColorInfoCopyWith<ArticleCoverMediaColorInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCoverMediaColorInfoCopyWith<$Res> {
  factory $ArticleCoverMediaColorInfoCopyWith(ArticleCoverMediaColorInfo value,
          $Res Function(ArticleCoverMediaColorInfo) then) =
      _$ArticleCoverMediaColorInfoCopyWithImpl<$Res,
          ArticleCoverMediaColorInfo>;
  @useResult
  $Res call({List<ArticleCoverMediaColorInfoPalette> palette});
}

/// @nodoc
class _$ArticleCoverMediaColorInfoCopyWithImpl<$Res,
        $Val extends ArticleCoverMediaColorInfo>
    implements $ArticleCoverMediaColorInfoCopyWith<$Res> {
  _$ArticleCoverMediaColorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleCoverMediaColorInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? palette = null,
  }) {
    return _then(_value.copyWith(
      palette: null == palette
          ? _value.palette
          : palette // ignore: cast_nullable_to_non_nullable
              as List<ArticleCoverMediaColorInfoPalette>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleCoverMediaColorInfoImplCopyWith<$Res>
    implements $ArticleCoverMediaColorInfoCopyWith<$Res> {
  factory _$$ArticleCoverMediaColorInfoImplCopyWith(
          _$ArticleCoverMediaColorInfoImpl value,
          $Res Function(_$ArticleCoverMediaColorInfoImpl) then) =
      __$$ArticleCoverMediaColorInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ArticleCoverMediaColorInfoPalette> palette});
}

/// @nodoc
class __$$ArticleCoverMediaColorInfoImplCopyWithImpl<$Res>
    extends _$ArticleCoverMediaColorInfoCopyWithImpl<$Res,
        _$ArticleCoverMediaColorInfoImpl>
    implements _$$ArticleCoverMediaColorInfoImplCopyWith<$Res> {
  __$$ArticleCoverMediaColorInfoImplCopyWithImpl(
      _$ArticleCoverMediaColorInfoImpl _value,
      $Res Function(_$ArticleCoverMediaColorInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleCoverMediaColorInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? palette = null,
  }) {
    return _then(_$ArticleCoverMediaColorInfoImpl(
      palette: null == palette
          ? _value._palette
          : palette // ignore: cast_nullable_to_non_nullable
              as List<ArticleCoverMediaColorInfoPalette>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCoverMediaColorInfoImpl implements _ArticleCoverMediaColorInfo {
  const _$ArticleCoverMediaColorInfoImpl(
      {required final List<ArticleCoverMediaColorInfoPalette> palette})
      : _palette = palette;

  factory _$ArticleCoverMediaColorInfoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ArticleCoverMediaColorInfoImplFromJson(json);

  final List<ArticleCoverMediaColorInfoPalette> _palette;
  @override
  List<ArticleCoverMediaColorInfoPalette> get palette {
    if (_palette is EqualUnmodifiableListView) return _palette;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_palette);
  }

  @override
  String toString() {
    return 'ArticleCoverMediaColorInfo(palette: $palette)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleCoverMediaColorInfoImpl &&
            const DeepCollectionEquality().equals(other._palette, _palette));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_palette));

  /// Create a copy of ArticleCoverMediaColorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleCoverMediaColorInfoImplCopyWith<_$ArticleCoverMediaColorInfoImpl>
      get copyWith => __$$ArticleCoverMediaColorInfoImplCopyWithImpl<
          _$ArticleCoverMediaColorInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleCoverMediaColorInfoImplToJson(
      this,
    );
  }
}

abstract class _ArticleCoverMediaColorInfo
    implements ArticleCoverMediaColorInfo {
  const factory _ArticleCoverMediaColorInfo(
          {required final List<ArticleCoverMediaColorInfoPalette> palette}) =
      _$ArticleCoverMediaColorInfoImpl;

  factory _ArticleCoverMediaColorInfo.fromJson(Map<String, dynamic> json) =
      _$ArticleCoverMediaColorInfoImpl.fromJson;

  @override
  List<ArticleCoverMediaColorInfoPalette> get palette;

  /// Create a copy of ArticleCoverMediaColorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleCoverMediaColorInfoImplCopyWith<_$ArticleCoverMediaColorInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
