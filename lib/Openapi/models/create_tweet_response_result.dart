// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_tweet.dart';

part 'create_tweet_response_result.freezed.dart';
part 'create_tweet_response_result.g.dart';

@Freezed()
class CreateTweetResponseResult with _$CreateTweetResponseResult {
  const factory CreateTweetResponseResult({
    @JsonKey(name: 'tweet_results')
    required CreateTweet tweetResults,
  }) = _CreateTweetResponseResult;
  
  factory CreateTweetResponseResult.fromJson(Map<String, Object?> json) => _$CreateTweetResponseResultFromJson(json);
}
