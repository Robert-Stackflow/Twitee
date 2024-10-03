// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cover_media_color_info_palette.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleCoverMediaColorInfoPalette _$ArticleCoverMediaColorInfoPaletteFromJson(
        Map<String, dynamic> json) =>
    ArticleCoverMediaColorInfoPalette(
      percentage: json['percentage'] as num,
      rgb: ArticleCoverMediaColorInfoPaletteRgb.fromJson(
          json['rgb'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleCoverMediaColorInfoPaletteToJson(
        ArticleCoverMediaColorInfoPalette instance) =>
    <String, dynamic>{
      'percentage': instance.percentage,
      'rgb': instance.rgb,
    };
