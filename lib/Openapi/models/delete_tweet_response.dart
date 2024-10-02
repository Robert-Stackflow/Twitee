// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'delete_tweet_response_data.dart';

part 'delete_tweet_response.freezed.dart';
part 'delete_tweet_response.g.dart';

@Freezed()
 class DeleteTweetResponse with _$DeleteTweetResponse {
  const factory DeleteTweetResponse({
    required DeleteTweetResponseData data,
  }) = _DeleteTweetResponse;
  
  factory DeleteTweetResponse.fromJson(Map<String, Object?> json) => _$DeleteTweetResponseFromJson(json);
}
