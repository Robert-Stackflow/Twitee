// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_retweeters_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetRetweetersResponseData _$TweetRetweetersResponseDataFromJson(
        Map<String, dynamic> json) =>
    TweetRetweetersResponseData(
      retweetersTimeline: json['retweeters_timeline'] == null
          ? null
          : TimelineV.fromJson(
              json['retweeters_timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetRetweetersResponseDataToJson(
        TweetRetweetersResponseData instance) =>
    <String, dynamic>{
      'retweeters_timeline': instance.retweetersTimeline,
    };
