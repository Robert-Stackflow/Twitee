// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline_v.dart';

part 'tweet_retweeters_response_data.freezed.dart';
part 'tweet_retweeters_response_data.g.dart';

@Freezed()
class TweetRetweetersResponseData with _$TweetRetweetersResponseData {
  const factory TweetRetweetersResponseData({
    @JsonKey(name: 'retweeters_timeline')
    required TimelineV retweetersTimeline,
  }) = _TweetRetweetersResponseData;
  
  factory TweetRetweetersResponseData.fromJson(Map<String, Object?> json) => _$TweetRetweetersResponseDataFromJson(json);
}
