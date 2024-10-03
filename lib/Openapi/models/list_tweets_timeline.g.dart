// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tweets_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTweetsTimeline _$ListTweetsTimelineFromJson(Map<String, dynamic> json) =>
    ListTweetsTimeline(
      timeline: json['timeline'] == null
          ? null
          : Timeline.fromJson(json['timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListTweetsTimelineToJson(ListTweetsTimeline instance) =>
    <String, dynamic>{
      'timeline': instance.timeline,
    };
