// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_original_info_focus_rect.dart';

part 'media_original_info.freezed.dart';
part 'media_original_info.g.dart';

@Freezed()
 class MediaOriginalInfo with _$MediaOriginalInfo {
  const factory MediaOriginalInfo({
    @JsonKey(name: 'focus_rects')
    required List<MediaOriginalInfoFocusRect> focusRects,
    required int height,
    required int width,
  }) = _MediaOriginalInfo;
  
  factory MediaOriginalInfo.fromJson(Map<String, Object?> json) => _$MediaOriginalInfoFromJson(json);
}
