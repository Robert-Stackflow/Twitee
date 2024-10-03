// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_cover_media_color_info_palette_rgb.dart';

part 'article_cover_media_color_info_palette.g.dart';

@JsonSerializable()
class ArticleCoverMediaColorInfoPalette  {
  const ArticleCoverMediaColorInfoPalette({
    required this.percentage,
    required this.rgb,
  });
  
  factory ArticleCoverMediaColorInfoPalette.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaColorInfoPaletteFromJson(json);
  
  final num percentage;
  final ArticleCoverMediaColorInfoPaletteRgb rgb;

  Map<String, Object?> toJson() => _$ArticleCoverMediaColorInfoPaletteToJson(this);
}
