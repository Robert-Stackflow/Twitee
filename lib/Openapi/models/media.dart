// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'additional_media_info.dart';
import 'allow_download_status.dart';
import 'ext_media_availability.dart';
import 'media_original_info.dart';
import 'media_results.dart';
import 'media_sizes.dart';
import 'media_type.dart';
import 'media_video_info.dart';
import 'sensitive_media_warning.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@Freezed()
 class Media with _$Media {
  const factory Media({
    @JsonKey(name: 'additional_media_info')
    required AdditionalMediaInfo additionalMediaInfo,
    @JsonKey(name: 'allow_download_status')
    required AllowDownloadStatus allowDownloadStatus,
    @JsonKey(name: 'display_url')
    required String displayUrl,
    @JsonKey(name: 'expanded_url')
    required String expandedUrl,
    @JsonKey(name: 'ext_alt_text')
    required String extAltText,
    @JsonKey(name: 'ext_media_availability')
    required ExtMediaAvailability extMediaAvailability,
    required dynamic features,
    @JsonKey(name: 'id_str')
    required String idStr,
    required List<int> indices,
    @JsonKey(name: 'media_key')
    required String mediaKey,
    @JsonKey(name: 'media_results')
    required MediaResults mediaResults,
    @JsonKey(name: 'media_url_https')
    required String mediaUrlHttps,
    @JsonKey(name: 'original_info')
    required MediaOriginalInfo originalInfo,
    @JsonKey(name: 'sensitive_media_warning')
    required SensitiveMediaWarning sensitiveMediaWarning,
    required MediaSizes sizes,
    @JsonKey(name: 'source_status_id_str')
    required String sourceStatusIdStr,
    @JsonKey(name: 'source_user_id_str')
    required String sourceUserIdStr,
    required MediaType type,
    required String url,
    @JsonKey(name: 'video_info')
    required MediaVideoInfo videoInfo,
  }) = _Media;
  
  factory Media.fromJson(Map<String, Object?> json) => _$MediaFromJson(json);
}
