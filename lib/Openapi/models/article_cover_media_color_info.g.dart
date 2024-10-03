// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cover_media_color_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleCoverMediaColorInfo _$ArticleCoverMediaColorInfoFromJson(
        Map<String, dynamic> json) =>
    ArticleCoverMediaColorInfo(
      palette: (json['palette'] as List<dynamic>)
          .map((e) => ArticleCoverMediaColorInfoPalette.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleCoverMediaColorInfoToJson(
        ArticleCoverMediaColorInfo instance) =>
    <String, dynamic>{
      'palette': instance.palette,
    };
