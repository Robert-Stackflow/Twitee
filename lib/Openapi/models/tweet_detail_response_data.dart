// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'tweet_detail_response_data.g.dart';

@JsonSerializable()
class TweetDetailResponseData  {
  const TweetDetailResponseData({
    required this.threadedConversationWithInjectionsV2,
  });
  
  factory TweetDetailResponseData.fromJson(Map<String, Object?> json) => _$TweetDetailResponseDataFromJson(json);
  
  @JsonKey(name: 'threaded_conversation_with_injections_v2')
  final Timeline? threadedConversationWithInjectionsV2;

  Map<String, Object?> toJson() => _$TweetDetailResponseDataToJson(this);
}
