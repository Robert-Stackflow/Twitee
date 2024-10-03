// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_tweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteTweetResponseData _$DeleteTweetResponseDataFromJson(
        Map<String, dynamic> json) =>
    DeleteTweetResponseData(
      deleteRetweet: json['delete_retweet'] == null
          ? null
          : DeleteTweetResponseResult.fromJson(
              json['delete_retweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteTweetResponseDataToJson(
        DeleteTweetResponseData instance) =>
    <String, dynamic>{
      'delete_retweet': instance.deleteRetweet,
    };
