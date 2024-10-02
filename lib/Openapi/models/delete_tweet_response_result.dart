// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_tweet_response_result.freezed.dart';
part 'delete_tweet_response_result.g.dart';

@Freezed()
class DeleteTweetResponseResult with _$DeleteTweetResponseResult {
  const factory DeleteTweetResponseResult({
    @JsonKey(name: 'tweet_results')
    required dynamic tweetResults,
  }) = _DeleteTweetResponseResult;
  
  factory DeleteTweetResponseResult.fromJson(Map<String, Object?> json) => _$DeleteTweetResponseResultFromJson(json);
}
