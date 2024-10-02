// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTweetResponseDataImpl _$$CreateTweetResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTweetResponseDataImpl(
      createTweet: CreateTweetResponseResult.fromJson(
          json['create_tweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateTweetResponseDataImplToJson(
        _$CreateTweetResponseDataImpl instance) =>
    <String, dynamic>{
      'create_tweet': instance.createTweet,
    };
