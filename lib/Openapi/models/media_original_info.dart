// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_original_info_focus_rect.dart';

part 'media_original_info.g.dart';

@JsonSerializable()
class MediaOriginalInfo  {
  const MediaOriginalInfo({
    required this.focusRects,
    required this.height,
    required this.width,
  });
  
  factory MediaOriginalInfo.fromJson(Map<String, Object?> json) => _$MediaOriginalInfoFromJson(json);
  
  @JsonKey(name: 'focus_rects')
  final List<MediaOriginalInfoFocusRect?>? focusRects;
  final int height;
  final int width;

  Map<String, Object?> toJson() => _$MediaOriginalInfoToJson(this);
}
