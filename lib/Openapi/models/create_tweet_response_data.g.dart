// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTweetResponseData _$CreateTweetResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateTweetResponseData(
      createTweet: json['create_tweet'] == null
          ? null
          : CreateTweetResponseResult.fromJson(
              json['create_tweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateTweetResponseDataToJson(
        CreateTweetResponseData instance) =>
    <String, dynamic>{
      'create_tweet': instance.createTweet,
    };
