// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'tweet_detail_response_data.freezed.dart';
part 'tweet_detail_response_data.g.dart';

@Freezed()
 class TweetDetailResponseData with _$TweetDetailResponseData {
  const factory TweetDetailResponseData({
    @JsonKey(name: 'threaded_conversation_with_injections_v2')
    required Timeline threadedConversationWithInjectionsV2,
  }) = _TweetDetailResponseData;
  
  factory TweetDetailResponseData.fromJson(Map<String, Object?> json) => _$TweetDetailResponseDataFromJson(json);
}
