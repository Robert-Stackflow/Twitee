// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_retweeters_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetRetweetersResponseDataImpl _$$TweetRetweetersResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetRetweetersResponseDataImpl(
      retweetersTimeline: TimelineV.fromJson(
          json['retweeters_timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TweetRetweetersResponseDataImplToJson(
        _$TweetRetweetersResponseDataImpl instance) =>
    <String, dynamic>{
      'retweeters_timeline': instance.retweetersTimeline,
    };
