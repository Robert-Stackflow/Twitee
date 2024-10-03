// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_video_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaVideoInfo _$MediaVideoInfoFromJson(Map<String, dynamic> json) =>
    MediaVideoInfo(
      aspectRatio: (json['aspect_ratio'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toInt())
          .toList(),
      durationMillis: (json['duration_millis'] as num?)?.toInt(),
      variants: (json['variants'] as List<dynamic>)
          .map((e) => MediaVideoInfoVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaVideoInfoToJson(MediaVideoInfo instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'duration_millis': instance.durationMillis,
      'variants': instance.variants,
    };
