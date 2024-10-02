// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_video_info_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaVideoInfoVariantImpl _$$MediaVideoInfoVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaVideoInfoVariantImpl(
      bitrate: (json['bitrate'] as num).toInt(),
      contentType: json['content_type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$MediaVideoInfoVariantImplToJson(
        _$MediaVideoInfoVariantImpl instance) =>
    <String, dynamic>{
      'bitrate': instance.bitrate,
      'content_type': instance.contentType,
      'url': instance.url,
    };
