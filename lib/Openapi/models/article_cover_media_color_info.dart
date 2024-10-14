// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_cover_media_color_info_palette.dart';

part 'article_cover_media_color_info.g.dart';

@JsonSerializable()
class ArticleCoverMediaColorInfo {
  const ArticleCoverMediaColorInfo({
    required this.palette,
  });

  factory ArticleCoverMediaColorInfo.fromJson(Map<String, Object?> json) =>
      _$ArticleCoverMediaColorInfoFromJson(json);

  final List<ArticleCoverMediaColorInfoPalette> palette;

  Map<String, Object?> toJson() => _$ArticleCoverMediaColorInfoToJson(this);
}
