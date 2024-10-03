// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tweets_timeline_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTweetsTimelineList _$ListTweetsTimelineListFromJson(
        Map<String, dynamic> json) =>
    ListTweetsTimelineList(
      tweetsTimeline: json['tweets_timeline'] == null
          ? null
          : ListTweetsTimeline.fromJson(
              json['tweets_timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListTweetsTimelineListToJson(
        ListTweetsTimelineList instance) =>
    <String, dynamic>{
      'tweets_timeline': instance.tweetsTimeline,
    };
