// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';

part 'timeline_clear_cache.g.dart';

@JsonSerializable()
class TimelineClearCache extends InstructionUnion {
  const TimelineClearCache({
    required this.type,
  });
  
  factory TimelineClearCache.fromJson(Map<String, Object?> json) => _$TimelineClearCacheFromJson(json);
  
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelineClearCacheToJson(this);
}
