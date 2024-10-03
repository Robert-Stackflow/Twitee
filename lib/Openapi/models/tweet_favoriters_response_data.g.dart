// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_favoriters_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetFavoritersResponseData _$TweetFavoritersResponseDataFromJson(
        Map<String, dynamic> json) =>
    TweetFavoritersResponseData(
      favoritersTimeline: json['favoriters_timeline'] == null
          ? null
          : TimelineV.fromJson(
              json['favoriters_timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetFavoritersResponseDataToJson(
        TweetFavoritersResponseData instance) =>
    <String, dynamic>{
      'favoriters_timeline': instance.favoritersTimeline,
    };
