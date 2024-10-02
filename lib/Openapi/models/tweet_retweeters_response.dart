// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_retweeters_response_data.dart';

part 'tweet_retweeters_response.freezed.dart';
part 'tweet_retweeters_response.g.dart';

@Freezed()
class TweetRetweetersResponse with _$TweetRetweetersResponse {
  const factory TweetRetweetersResponse({
    required TweetRetweetersResponseData data,
  }) = _TweetRetweetersResponse;
  
  factory TweetRetweetersResponse.fromJson(Map<String, Object?> json) => _$TweetRetweetersResponseFromJson(json);
}
