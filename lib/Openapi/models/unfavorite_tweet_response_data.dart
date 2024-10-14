// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'unfavorite_tweet.dart';

part 'unfavorite_tweet_response_data.g.dart';

@JsonSerializable()
class UnfavoriteTweetResponseData {
  const UnfavoriteTweetResponseData({
    required this.data,
  });

  factory UnfavoriteTweetResponseData.fromJson(Map<String, Object?> json) =>
      _$UnfavoriteTweetResponseDataFromJson(json);

  final UnfavoriteTweet data;

  Map<String, Object?> toJson() => _$UnfavoriteTweetResponseDataToJson(this);
}
