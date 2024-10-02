// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_size_resize.dart';

part 'media_size.freezed.dart';
part 'media_size.g.dart';

@Freezed()
 class MediaSize with _$MediaSize {
  const factory MediaSize({
    required int h,
    required MediaSizeResize resize,
    required int w,
  }) = _MediaSize;
  
  factory MediaSize.fromJson(Map<String, Object?> json) => _$MediaSizeFromJson(json);
}
