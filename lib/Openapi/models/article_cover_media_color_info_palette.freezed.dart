// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_cover_media_color_info_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleCoverMediaColorInfoPalette _$ArticleCoverMediaColorInfoPaletteFromJson(
    Map<String, dynamic> json) {
  return _ArticleCoverMediaColorInfoPalette.fromJson(json);
}

/// @nodoc
mixin _$ArticleCoverMediaColorInfoPalette {
  num get percentage => throw _privateConstructorUsedError;
  ArticleCoverMediaColorInfoPaletteRgb get rgb =>
      throw _privateConstructorUsedError;

  /// Serializes this ArticleCoverMediaColorInfoPalette to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleCoverMediaColorInfoPalette
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCoverMediaColorInfoPaletteCopyWith<ArticleCoverMediaColorInfoPalette>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCoverMediaColorInfoPaletteCopyWith<$Res> {
  factory $ArticleCoverMediaColorInfoPaletteCopyWith(
          ArticleCoverMediaColorInfoPalette value,
          $Res Function(ArticleCoverMediaColorInfoPalette) then) =
      _$ArticleCoverMediaColorInfoPaletteCopyWithImpl<$Res,
          ArticleCoverMediaColorInfoPalette>;
  @useResult
  $Res call({num percentage, ArticleCoverMediaColorInfoPaletteRgb rgb});

  $ArticleCoverMediaColorInfoPaletteRgbCopyWith<$Res> get rgb;
}

/// @nodoc
class _$ArticleCoverMediaColorInfoPaletteCopyWithImpl<$Res,
        $Val extends ArticleCoverMediaColorInfoPalette>
    implements $ArticleCoverMediaColorInfoPaletteCopyWith<$Res> {
  _$ArticleCoverMediaColorInfoPaletteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleCoverMediaColorInfoPalette
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
    Object? rgb = null,
  }) {
    return _then(_value.copyWith(
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
      rgb: null == rgb
          ? _value.rgb
          : rgb // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMediaColorInfoPaletteRgb,
    ) as $Val);
  }

  /// Create a copy of ArticleCoverMediaColorInfoPalette
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCoverMediaColorInfoPaletteRgbCopyWith<$Res> get rgb {
    return $ArticleCoverMediaColorInfoPaletteRgbCopyWith<$Res>(_value.rgb,
        (value) {
      return _then(_value.copyWith(rgb: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleCoverMediaColorInfoPaletteImplCopyWith<$Res>
    implements $ArticleCoverMediaColorInfoPaletteCopyWith<$Res> {
  factory _$$ArticleCoverMediaColorInfoPaletteImplCopyWith(
          _$ArticleCoverMediaColorInfoPaletteImpl value,
          $Res Function(_$ArticleCoverMediaColorInfoPaletteImpl) then) =
      __$$ArticleCoverMediaColorInfoPaletteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num percentage, ArticleCoverMediaColorInfoPaletteRgb rgb});

  @override
  $ArticleCoverMediaColorInfoPaletteRgbCopyWith<$Res> get rgb;
}

/// @nodoc
class __$$ArticleCoverMediaColorInfoPaletteImplCopyWithImpl<$Res>
    extends _$ArticleCoverMediaColorInfoPaletteCopyWithImpl<$Res,
        _$ArticleCoverMediaColorInfoPaletteImpl>
    implements _$$ArticleCoverMediaColorInfoPaletteImplCopyWith<$Res> {
  __$$ArticleCoverMediaColorInfoPaletteImplCopyWithImpl(
      _$ArticleCoverMediaColorInfoPaletteImpl _value,
      $Res Function(_$ArticleCoverMediaColorInfoPaletteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleCoverMediaColorInfoPalette
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
    Object? rgb = null,
  }) {
    return _then(_$ArticleCoverMediaColorInfoPaletteImpl(
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
      rgb: null == rgb
          ? _value.rgb
          : rgb // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMediaColorInfoPaletteRgb,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCoverMediaColorInfoPaletteImpl
    implements _ArticleCoverMediaColorInfoPalette {
  const _$ArticleCoverMediaColorInfoPaletteImpl(
      {required this.percentage, required this.rgb});

  factory _$ArticleCoverMediaColorInfoPaletteImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ArticleCoverMediaColorInfoPaletteImplFromJson(json);

  @override
  final num percentage;
  @override
  final ArticleCoverMediaColorInfoPaletteRgb rgb;

  @override
  String toString() {
    return 'ArticleCoverMediaColorInfoPalette(percentage: $percentage, rgb: $rgb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleCoverMediaColorInfoPaletteImpl &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.rgb, rgb) || other.rgb == rgb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, percentage, rgb);

  /// Create a copy of ArticleCoverMediaColorInfoPalette
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleCoverMediaColorInfoPaletteImplCopyWith<
          _$ArticleCoverMediaColorInfoPaletteImpl>
      get copyWith => __$$ArticleCoverMediaColorInfoPaletteImplCopyWithImpl<
          _$ArticleCoverMediaColorInfoPaletteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleCoverMediaColorInfoPaletteImplToJson(
      this,
    );
  }
}

abstract class _ArticleCoverMediaColorInfoPalette
    implements ArticleCoverMediaColorInfoPalette {
  const factory _ArticleCoverMediaColorInfoPalette(
          {required final num percentage,
          required final ArticleCoverMediaColorInfoPaletteRgb rgb}) =
      _$ArticleCoverMediaColorInfoPaletteImpl;

  factory _ArticleCoverMediaColorInfoPalette.fromJson(
          Map<String, dynamic> json) =
      _$ArticleCoverMediaColorInfoPaletteImpl.fromJson;

  @override
  num get percentage;
  @override
  ArticleCoverMediaColorInfoPaletteRgb get rgb;

  /// Create a copy of ArticleCoverMediaColorInfoPalette
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleCoverMediaColorInfoPaletteImplCopyWith<
          _$ArticleCoverMediaColorInfoPaletteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
