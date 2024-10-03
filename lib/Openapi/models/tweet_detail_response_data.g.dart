// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_detail_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetDetailResponseData _$TweetDetailResponseDataFromJson(
        Map<String, dynamic> json) =>
    TweetDetailResponseData(
      threadedConversationWithInjectionsV2:
          json['threaded_conversation_with_injections_v2'] == null
              ? null
              : Timeline.fromJson(
                  json['threaded_conversation_with_injections_v2']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetDetailResponseDataToJson(
        TweetDetailResponseData instance) =>
    <String, dynamic>{
      'threaded_conversation_with_injections_v2':
          instance.threadedConversationWithInjectionsV2,
    };
