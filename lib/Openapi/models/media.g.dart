// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      additionalMediaInfo: json['additional_media_info'] == null
          ? null
          : AdditionalMediaInfo.fromJson(
              json['additional_media_info'] as Map<String, dynamic>),
      allowDownloadStatus: json['allow_download_status'] == null
          ? null
          : AllowDownloadStatus.fromJson(
              json['allow_download_status'] as Map<String, dynamic>),
      displayUrl: json['display_url'] as String?,
      expandedUrl: json['expanded_url'] as String?,
      extAltText: json['ext_alt_text'] as String?,
      extMediaAvailability: json['ext_media_availability'] == null
          ? null
          : ExtMediaAvailability.fromJson(
              json['ext_media_availability'] as Map<String, dynamic>),
      features: json['features'],
      idStr: json['id_str'] as String?,
      indices: json['indices'] == null
          ? null
          : (json['indices'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      mediaKey: json['media_key'] as String?,
      mediaResults: json['media_results'] == null
          ? null
          : MediaResults.fromJson(
              json['media_results'] as Map<String, dynamic>),
      mediaUrlHttps: json['media_url_https'] as String?,
      originalInfo: json['original_info'] == null
          ? null
          : MediaOriginalInfo.fromJson(
              json['original_info'] as Map<String, dynamic>),
      sensitiveMediaWarning: json['sensitive_media_warning'] == null
          ? null
          : SensitiveMediaWarning.fromJson(
              json['sensitive_media_warning'] as Map<String, dynamic>),
      sizes: MediaSizes.fromJson(json['sizes'] as Map<String, dynamic>),
      sourceStatusIdStr: json['source_status_id_str'] as String?,
      sourceUserIdStr: json['source_user_id_str'] as String?,
      type: MediaType.fromJson(json['type'] as String),
      url: json['url'] as String,
      videoInfo: json['video_info'] == null
          ? null
          : MediaVideoInfo.fromJson(json['video_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'additional_media_info': instance.additionalMediaInfo,
      'allow_download_status': instance.allowDownloadStatus,
      'display_url': instance.displayUrl,
      'expanded_url': instance.expandedUrl,
      'ext_alt_text': instance.extAltText,
      'ext_media_availability': instance.extMediaAvailability,
      'features': instance.features,
      'id_str': instance.idStr,
      'indices': instance.indices,
      'media_key': instance.mediaKey,
      'media_results': instance.mediaResults,
      'media_url_https': instance.mediaUrlHttps,
      'original_info': instance.originalInfo,
      'sensitive_media_warning': instance.sensitiveMediaWarning,
      'sizes': instance.sizes,
      'source_status_id_str': instance.sourceStatusIdStr,
      'source_user_id_str': instance.sourceUserIdStr,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'url': instance.url,
      'video_info': instance.videoInfo,
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'photo',
  MediaType.video: 'video',
  MediaType.animatedGif: 'animated_gif',
  MediaType.$unknown: r'$unknown',
};
