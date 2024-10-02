// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_video_info_variant.dart';

part 'media_video_info.freezed.dart';
part 'media_video_info.g.dart';

@Freezed()
class MediaVideoInfo with _$MediaVideoInfo {
  const factory MediaVideoInfo({
    @JsonKey(name: 'aspect_ratio')
    required List<int> aspectRatio,
    @JsonKey(name: 'duration_millis')
    required int durationMillis,
    required List<MediaVideoInfoVariant> variants,
  }) = _MediaVideoInfo;
  
  factory MediaVideoInfo.fromJson(Map<String, Object?> json) => _$MediaVideoInfoFromJson(json);
}
