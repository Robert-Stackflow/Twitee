// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_video_info_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaVideoInfoVariant _$MediaVideoInfoVariantFromJson(
        Map<String, dynamic> json) =>
    MediaVideoInfoVariant(
      bitrate: (json['bitrate'] as num?)?.toInt(),
      contentType: json['content_type'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$MediaVideoInfoVariantToJson(
        MediaVideoInfoVariant instance) =>
    <String, dynamic>{
      'bitrate': instance.bitrate,
      'content_type': instance.contentType,
      'url': instance.url,
    };
