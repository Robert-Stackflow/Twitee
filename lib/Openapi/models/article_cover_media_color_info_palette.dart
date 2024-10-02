// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_cover_media_color_info_palette_rgb.dart';

part 'article_cover_media_color_info_palette.freezed.dart';
part 'article_cover_media_color_info_palette.g.dart';

@Freezed()
class ArticleCoverMediaColorInfoPalette with _$ArticleCoverMediaColorInfoPalette {
  const factory ArticleCoverMediaColorInfoPalette({
    required num percentage,
    required ArticleCoverMediaColorInfoPaletteRgb rgb,
  }) = _ArticleCoverMediaColorInfoPalette;
  
  factory ArticleCoverMediaColorInfoPalette.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaColorInfoPaletteFromJson(json);
}
