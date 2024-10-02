// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_tweets_data.dart';

part 'user_tweets_response.freezed.dart';
part 'user_tweets_response.g.dart';

@Freezed()
 class UserTweetsResponse with _$UserTweetsResponse {
  const factory UserTweetsResponse({
    required UserTweetsData data,
  }) = _UserTweetsResponse;
  
  factory UserTweetsResponse.fromJson(Map<String, Object?> json) => _$UserTweetsResponseFromJson(json);
}
