// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline_cover_behavior_type.dart';
import 'timeline_cover_behavior_url.dart';

part 'timeline_cover_behavior.freezed.dart';
part 'timeline_cover_behavior.g.dart';

@Freezed()
class TimelineCoverBehavior with _$TimelineCoverBehavior {
  const factory TimelineCoverBehavior({
    required TimelineCoverBehaviorType type,
    required TimelineCoverBehaviorUrl url,
  }) = _TimelineCoverBehavior;
  
  factory TimelineCoverBehavior.fromJson(Map<String, Object?> json) => _$TimelineCoverBehaviorFromJson(json);
}
