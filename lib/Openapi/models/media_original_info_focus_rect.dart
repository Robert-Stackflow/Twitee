// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'media_original_info_focus_rect.g.dart';

@JsonSerializable()
class MediaOriginalInfoFocusRect {
  const MediaOriginalInfoFocusRect({
    required this.h,
    required this.w,
    required this.x,
    required this.y,
  });

  factory MediaOriginalInfoFocusRect.fromJson(Map<String, Object?> json) =>
      _$MediaOriginalInfoFocusRectFromJson(json);

  final int h;
  final int w;
  final int x;
  final int y;

  Map<String, Object?> toJson() => _$MediaOriginalInfoFocusRectToJson(this);
}
