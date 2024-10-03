// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'media_stats.g.dart';

@JsonSerializable()
class MediaStats  {
  const MediaStats({
    required this.viewCount,
  });
  
  factory MediaStats.fromJson(Map<String, Object?> json) => _$MediaStatsFromJson(json);
  
  final int viewCount;

  Map<String, Object?> toJson() => _$MediaStatsToJson(this);
}
