// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'article_cover_media_color_info_palette_rgb.g.dart';

@JsonSerializable()
class ArticleCoverMediaColorInfoPaletteRgb {
  const ArticleCoverMediaColorInfoPaletteRgb({
    required this.blue,
    required this.green,
    required this.red,
  });

  factory ArticleCoverMediaColorInfoPaletteRgb.fromJson(
          Map<String, Object?> json) =>
      _$ArticleCoverMediaColorInfoPaletteRgbFromJson(json);

  final int blue;
  final int green;
  final int red;

  Map<String, Object?> toJson() =>
      _$ArticleCoverMediaColorInfoPaletteRgbToJson(this);
}
