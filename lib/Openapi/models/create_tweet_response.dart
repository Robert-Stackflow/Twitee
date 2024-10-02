// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_tweet_response_data.dart';

part 'create_tweet_response.freezed.dart';
part 'create_tweet_response.g.dart';

@Freezed()
class CreateTweetResponse with _$CreateTweetResponse {
  const factory CreateTweetResponse({
    required CreateTweetResponseData data,
  }) = _CreateTweetResponse;
  
  factory CreateTweetResponse.fromJson(Map<String, Object?> json) => _$CreateTweetResponseFromJson(json);
}
