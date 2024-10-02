// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_stats.freezed.dart';
part 'media_stats.g.dart';

@Freezed()
class MediaStats with _$MediaStats {
  const factory MediaStats({
    required int viewCount,
  }) = _MediaStats;
  
  factory MediaStats.fromJson(Map<String, Object?> json) => _$MediaStatsFromJson(json);
}
