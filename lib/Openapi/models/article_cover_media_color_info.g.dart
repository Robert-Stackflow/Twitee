// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cover_media_color_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleCoverMediaColorInfoImpl _$$ArticleCoverMediaColorInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleCoverMediaColorInfoImpl(
      palette: (json['palette'] as List<dynamic>)
          .map((e) => ArticleCoverMediaColorInfoPalette.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArticleCoverMediaColorInfoImplToJson(
        _$ArticleCoverMediaColorInfoImpl instance) =>
    <String, dynamic>{
      'palette': instance.palette,
    };
