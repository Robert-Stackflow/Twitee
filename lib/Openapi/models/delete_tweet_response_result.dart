// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'delete_tweet_response_result.g.dart';

@JsonSerializable()
class DeleteTweetResponseResult {
  const DeleteTweetResponseResult({
    required this.tweetResults,
  });

  factory DeleteTweetResponseResult.fromJson(Map<String, Object?> json) =>
      _$DeleteTweetResponseResultFromJson(json);

  @JsonKey(name: 'tweet_results')
  final dynamic tweetResults;

  Map<String, Object?> toJson() => _$DeleteTweetResponseResultToJson(this);
}
