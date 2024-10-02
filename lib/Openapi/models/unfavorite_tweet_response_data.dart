// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'unfavorite_tweet.dart';

part 'unfavorite_tweet_response_data.freezed.dart';
part 'unfavorite_tweet_response_data.g.dart';

@Freezed()
class UnfavoriteTweetResponseData with _$UnfavoriteTweetResponseData {
  const factory UnfavoriteTweetResponseData({
    required UnfavoriteTweet data,
  }) = _UnfavoriteTweetResponseData;
  
  factory UnfavoriteTweetResponseData.fromJson(Map<String, Object?> json) => _$UnfavoriteTweetResponseDataFromJson(json);
}
