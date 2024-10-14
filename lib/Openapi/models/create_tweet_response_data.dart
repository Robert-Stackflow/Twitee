// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_tweet_response_result.dart';

part 'create_tweet_response_data.g.dart';

@JsonSerializable()
class CreateTweetResponseData {
  const CreateTweetResponseData({
    required this.createTweet,
  });

  factory CreateTweetResponseData.fromJson(Map<String, Object?> json) =>
      _$CreateTweetResponseDataFromJson(json);

  @JsonKey(name: 'create_tweet')
  final CreateTweetResponseResult? createTweet;

  Map<String, Object?> toJson() => _$CreateTweetResponseDataToJson(this);
}
