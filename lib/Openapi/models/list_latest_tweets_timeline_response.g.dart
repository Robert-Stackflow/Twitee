// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_latest_tweets_timeline_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListLatestTweetsTimelineResponse _$ListLatestTweetsTimelineResponseFromJson(
        Map<String, dynamic> json) =>
    ListLatestTweetsTimelineResponse(
      data:
          ListTweetsTimelineData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListLatestTweetsTimelineResponseToJson(
        ListLatestTweetsTimelineResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
