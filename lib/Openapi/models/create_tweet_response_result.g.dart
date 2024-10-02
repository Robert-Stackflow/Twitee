// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tweet_response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTweetResponseResultImpl _$$CreateTweetResponseResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTweetResponseResultImpl(
      tweetResults:
          CreateTweet.fromJson(json['tweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateTweetResponseResultImplToJson(
        _$CreateTweetResponseResultImpl instance) =>
    <String, dynamic>{
      'tweet_results': instance.tweetResults,
    };
