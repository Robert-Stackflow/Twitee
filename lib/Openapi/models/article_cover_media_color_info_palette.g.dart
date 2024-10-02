// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cover_media_color_info_palette.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleCoverMediaColorInfoPaletteImpl
    _$$ArticleCoverMediaColorInfoPaletteImplFromJson(
            Map<String, dynamic> json) =>
        _$ArticleCoverMediaColorInfoPaletteImpl(
          percentage: json['percentage'] as num,
          rgb: ArticleCoverMediaColorInfoPaletteRgb.fromJson(
              json['rgb'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ArticleCoverMediaColorInfoPaletteImplToJson(
        _$ArticleCoverMediaColorInfoPaletteImpl instance) =>
    <String, dynamic>{
      'percentage': instance.percentage,
      'rgb': instance.rgb,
    };
