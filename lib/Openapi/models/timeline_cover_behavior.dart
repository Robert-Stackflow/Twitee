// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline_cover_behavior_type.dart';
import 'timeline_cover_behavior_url.dart';

part 'timeline_cover_behavior.g.dart';

@JsonSerializable()
class TimelineCoverBehavior  {
  const TimelineCoverBehavior({
    required this.type,
    required this.url,
  });
  
  factory TimelineCoverBehavior.fromJson(Map<String, Object?> json) => _$TimelineCoverBehaviorFromJson(json);
  
  final TimelineCoverBehaviorType type;
  final TimelineCoverBehaviorUrl? url;

  Map<String, Object?> toJson() => _$TimelineCoverBehaviorToJson(this);
}
