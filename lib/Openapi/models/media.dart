// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'additional_media_info.dart';
import 'allow_download_status.dart';
import 'ext_media_availability.dart';
import 'media_original_info.dart';
import 'media_results.dart';
import 'media_sizes.dart';
import 'media_type.dart';
import 'media_video_info.dart';
import 'sensitive_media_warning.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  Media({
    required this.additionalMediaInfo,
    required this.allowDownloadStatus,
    required this.displayUrl,
    required this.expandedUrl,
    required this.extAltText,
    required this.extMediaAvailability,
    required this.features,
    required this.idStr,
    required this.indices,
    required this.mediaKey,
    required this.mediaResults,
    required this.mediaUrlHttps,
    required this.originalInfo,
    required this.sensitiveMediaWarning,
    required this.sizes,
    required this.sourceStatusIdStr,
    required this.sourceUserIdStr,
    required this.type,
    required this.url,
    required this.videoInfo,
  });

  factory Media.fromJson(Map<String, Object?> json) => _$MediaFromJson(json);

  @JsonKey(name: 'additional_media_info')
  final AdditionalMediaInfo? additionalMediaInfo;
  @JsonKey(name: 'allow_download_status')
  final AllowDownloadStatus? allowDownloadStatus;
  @JsonKey(name: 'display_url')
  final String? displayUrl;
  @JsonKey(name: 'expanded_url')
  final String? expandedUrl;
  @JsonKey(name: 'ext_alt_text')
  final String? extAltText;
  @JsonKey(name: 'ext_media_availability')
  final ExtMediaAvailability? extMediaAvailability;
  final dynamic features;
  @JsonKey(name: 'id_str')
  final String? idStr;
  final List<int>? indices;
  @JsonKey(name: 'media_key')
  final String? mediaKey;
  @JsonKey(name: 'media_results')
  final MediaResults? mediaResults;
  @JsonKey(name: 'media_url_https')
  final String? mediaUrlHttps;
  @JsonKey(name: 'original_info')
  final MediaOriginalInfo? originalInfo;
  @JsonKey(name: 'sensitive_media_warning')
  final SensitiveMediaWarning? sensitiveMediaWarning;
  final MediaSizes sizes;
  @JsonKey(name: 'source_status_id_str')
  final String? sourceStatusIdStr;
  @JsonKey(name: 'source_user_id_str')
  final String? sourceUserIdStr;
  final MediaType type;
  String url;
  @JsonKey(name: 'video_info')
  final MediaVideoInfo? videoInfo;

  Map<String, Object?> toJson() => _$MediaToJson(this);

  factory Media.clone(Media media) =>
      Media(
        additionalMediaInfo: media.additionalMediaInfo,
        allowDownloadStatus: media.allowDownloadStatus,
        displayUrl: media.displayUrl,
        expandedUrl: media.expandedUrl,
        extAltText: media.extAltText,
        extMediaAvailability: media.extMediaAvailability,
        features: media.features,
        idStr: media.idStr,
        indices: media.indices == null ? null : List<int>.from(media.indices!),
        mediaKey: media.mediaKey,
        mediaResults: media.mediaResults,
        mediaUrlHttps: media.mediaUrlHttps,
        originalInfo: media.originalInfo,
        sensitiveMediaWarning: media.sensitiveMediaWarning,
        sizes: media.sizes,
        sourceStatusIdStr: media.sourceStatusIdStr,
        sourceUserIdStr: media.sourceUserIdStr,
        type: media.type,
        url: media.url,
        videoInfo: media.videoInfo,
      );

  @override
  String toString() => jsonEncode(toJson());
}
