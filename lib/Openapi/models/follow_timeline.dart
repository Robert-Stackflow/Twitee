// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'follow_timeline.freezed.dart';
part 'follow_timeline.g.dart';

@Freezed()
 class FollowTimeline with _$FollowTimeline {
  const factory FollowTimeline({
    required Timeline timeline,
  }) = _FollowTimeline;
  
  factory FollowTimeline.fromJson(Map<String, Object?> json) => _$FollowTimelineFromJson(json);
}
