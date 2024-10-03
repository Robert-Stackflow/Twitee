// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_result_by_rest_id_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetResultByRestIdData _$TweetResultByRestIdDataFromJson(
        Map<String, dynamic> json) =>
    TweetResultByRestIdData(
      tweetResult:
          ItemResult.fromJson(json['tweetResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetResultByRestIdDataToJson(
        TweetResultByRestIdData instance) =>
    <String, dynamic>{
      'tweetResult': instance.tweetResult,
    };
