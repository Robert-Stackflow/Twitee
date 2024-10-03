// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tweets_timeline_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTweetsTimelineData _$ListTweetsTimelineDataFromJson(
        Map<String, dynamic> json) =>
    ListTweetsTimelineData(
      list:
          ListTweetsTimelineList.fromJson(json['list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListTweetsTimelineDataToJson(
        ListTweetsTimelineData instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
