// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'media_video_info_variant.g.dart';

@JsonSerializable()
class MediaVideoInfoVariant  {
  const MediaVideoInfoVariant({
    required this.bitrate,
    required this.contentType,
    required this.url,
  });
  
  factory MediaVideoInfoVariant.fromJson(Map<String, Object?> json) => _$MediaVideoInfoVariantFromJson(json);
  
  final int? bitrate;
  @JsonKey(name: 'content_type')
  final String? contentType;
  final String url;

  Map<String, Object?> toJson() => _$MediaVideoInfoVariantToJson(this);
}
