// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_highlights_tweets_data.dart';

part 'user_highlights_tweets_response.freezed.dart';
part 'user_highlights_tweets_response.g.dart';

@Freezed()
class UserHighlightsTweetsResponse with _$UserHighlightsTweetsResponse {
  const factory UserHighlightsTweetsResponse({
    required UserHighlightsTweetsData data,
  }) = _UserHighlightsTweetsResponse;
  
  factory UserHighlightsTweetsResponse.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsResponseFromJson(json);
}
