// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_tweet_response_result.dart';

part 'create_tweet_response_data.freezed.dart';
part 'create_tweet_response_data.g.dart';

@Freezed()
class CreateTweetResponseData with _$CreateTweetResponseData {
  const factory CreateTweetResponseData({
    @JsonKey(name: 'create_tweet')
    required CreateTweetResponseResult createTweet,
  }) = _CreateTweetResponseData;
  
  factory CreateTweetResponseData.fromJson(Map<String, Object?> json) => _$CreateTweetResponseDataFromJson(json);
}
