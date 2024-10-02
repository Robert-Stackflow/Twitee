// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_cover_media_color_info_palette.dart';

part 'article_cover_media_color_info.freezed.dart';
part 'article_cover_media_color_info.g.dart';

@Freezed()
 class ArticleCoverMediaColorInfo with _$ArticleCoverMediaColorInfo {
  const factory ArticleCoverMediaColorInfo({
    required List<ArticleCoverMediaColorInfoPalette> palette,
  }) = _ArticleCoverMediaColorInfo;
  
  factory ArticleCoverMediaColorInfo.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaColorInfoFromJson(json);
}
