// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tweet_response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTweetResponseResult _$CreateTweetResponseResultFromJson(
        Map<String, dynamic> json) =>
    CreateTweetResponseResult(
      tweetResults: json['tweet_results'] == null
          ? null
          : CreateTweet.fromJson(json['tweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateTweetResponseResultToJson(
        CreateTweetResponseResult instance) =>
    <String, dynamic>{
      'tweet_results': instance.tweetResults,
    };
