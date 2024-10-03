// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowTimeline _$FollowTimelineFromJson(Map<String, dynamic> json) =>
    FollowTimeline(
      timeline: Timeline.fromJson(json['timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FollowTimelineToJson(FollowTimeline instance) =>
    <String, dynamic>{
      'timeline': instance.timeline,
    };
