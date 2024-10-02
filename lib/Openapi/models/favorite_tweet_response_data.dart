// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'favorite_tweet.dart';

part 'favorite_tweet_response_data.freezed.dart';
part 'favorite_tweet_response_data.g.dart';

@Freezed()
 class FavoriteTweetResponseData with _$FavoriteTweetResponseData {
  const factory FavoriteTweetResponseData({
    required FavoriteTweet data,
  }) = _FavoriteTweetResponseData;
  
  factory FavoriteTweetResponseData.fromJson(Map<String, Object?> json) => _$FavoriteTweetResponseDataFromJson(json);
}
