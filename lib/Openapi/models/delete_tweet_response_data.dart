// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'delete_tweet_response_result.dart';

part 'delete_tweet_response_data.g.dart';

@JsonSerializable()
class DeleteTweetResponseData {
  const DeleteTweetResponseData({
    required this.deleteRetweet,
  });

  factory DeleteTweetResponseData.fromJson(Map<String, Object?> json) =>
      _$DeleteTweetResponseDataFromJson(json);

  @JsonKey(name: 'delete_retweet')
  final DeleteTweetResponseResult? deleteRetweet;

  Map<String, Object?> toJson() => _$DeleteTweetResponseDataToJson(this);
}
