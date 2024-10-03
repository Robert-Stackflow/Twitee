// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'follow_timeline.g.dart';

@JsonSerializable()
class FollowTimeline  {
  const FollowTimeline({
    required this.timeline,
  });
  
  factory FollowTimeline.fromJson(Map<String, Object?> json) => _$FollowTimelineFromJson(json);
  
  final Timeline timeline;

  Map<String, Object?> toJson() => _$FollowTimelineToJson(this);
}
