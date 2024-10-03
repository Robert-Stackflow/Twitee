// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_size_resize.dart';

part 'media_size.g.dart';

@JsonSerializable()
class MediaSize  {
  const MediaSize({
    required this.h,
    required this.resize,
    required this.w,
  });
  
  factory MediaSize.fromJson(Map<String, Object?> json) => _$MediaSizeFromJson(json);
  
  final int h;
  final MediaSizeResize resize;
  final int w;

  Map<String, Object?> toJson() => _$MediaSizeToJson(this);
}
