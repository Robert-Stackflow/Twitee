// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_video_info_variant.freezed.dart';
part 'media_video_info_variant.g.dart';

@Freezed()
 class MediaVideoInfoVariant with _$MediaVideoInfoVariant {
  const factory MediaVideoInfoVariant({
    required int bitrate,
    @JsonKey(name: 'content_type')
    required String contentType,
    required String url,
  }) = _MediaVideoInfoVariant;
  
  factory MediaVideoInfoVariant.fromJson(Map<String, Object?> json) => _$MediaVideoInfoVariantFromJson(json);
}
