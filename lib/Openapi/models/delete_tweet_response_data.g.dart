// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_tweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteTweetResponseDataImpl _$$DeleteTweetResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteTweetResponseDataImpl(
      deleteRetweet: DeleteTweetResponseResult.fromJson(
          json['delete_retweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteTweetResponseDataImplToJson(
        _$DeleteTweetResponseDataImpl instance) =>
    <String, dynamic>{
      'delete_retweet': instance.deleteRetweet,
    };
