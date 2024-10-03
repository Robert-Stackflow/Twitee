// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'favorite_tweet.dart';

part 'favorite_tweet_response_data.g.dart';

@JsonSerializable()
class FavoriteTweetResponseData  {
  const FavoriteTweetResponseData({
    required this.data,
  });
  
  factory FavoriteTweetResponseData.fromJson(Map<String, Object?> json) => _$FavoriteTweetResponseDataFromJson(json);
  
  final FavoriteTweet data;

  Map<String, Object?> toJson() => _$FavoriteTweetResponseDataToJson(this);
}
