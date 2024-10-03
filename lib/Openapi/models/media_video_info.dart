// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_video_info_variant.dart';

part 'media_video_info.g.dart';

@JsonSerializable()
class MediaVideoInfo  {
  const MediaVideoInfo({
    required this.aspectRatio,
    required this.durationMillis,
    required this.variants,
  });
  
  factory MediaVideoInfo.fromJson(Map<String, Object?> json) => _$MediaVideoInfoFromJson(json);
  
  @JsonKey(name: 'aspect_ratio')
  final List<int?>? aspectRatio;
  @JsonKey(name: 'duration_millis')
  final int? durationMillis;
  final List<MediaVideoInfoVariant> variants;

  Map<String, Object?> toJson() => _$MediaVideoInfoToJson(this);
}
