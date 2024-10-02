// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'delete_tweet_response_result.dart';

part 'delete_tweet_response_data.freezed.dart';
part 'delete_tweet_response_data.g.dart';

@Freezed()
 class DeleteTweetResponseData with _$DeleteTweetResponseData {
  const factory DeleteTweetResponseData({
    @JsonKey(name: 'delete_retweet')
    required DeleteTweetResponseResult deleteRetweet,
  }) = _DeleteTweetResponseData;
  
  factory DeleteTweetResponseData.fromJson(Map<String, Object?> json) => _$DeleteTweetResponseDataFromJson(json);
}
