// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';

part 'timeline_clear_cache.freezed.dart';
part 'timeline_clear_cache.g.dart';

@Freezed()
 class TimelineClearCache with _$TimelineClearCache {
  const factory TimelineClearCache({
    required InstructionType type,
  }) = _TimelineClearCache;
  
  factory TimelineClearCache.fromJson(Map<String, Object?> json) => _$TimelineClearCacheFromJson(json);
}
