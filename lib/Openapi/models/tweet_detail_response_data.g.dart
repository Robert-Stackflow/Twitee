// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_detail_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetDetailResponseDataImpl _$$TweetDetailResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetDetailResponseDataImpl(
      threadedConversationWithInjectionsV2: Timeline.fromJson(
          json['threaded_conversation_with_injections_v2']
              as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TweetDetailResponseDataImplToJson(
        _$TweetDetailResponseDataImpl instance) =>
    <String, dynamic>{
      'threaded_conversation_with_injections_v2':
          instance.threadedConversationWithInjectionsV2,
    };
