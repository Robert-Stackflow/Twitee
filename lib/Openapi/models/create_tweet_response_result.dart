// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_tweet.dart';

part 'create_tweet_response_result.g.dart';

@JsonSerializable()
class CreateTweetResponseResult  {
  const CreateTweetResponseResult({
    required this.tweetResults,
  });
  
  factory CreateTweetResponseResult.fromJson(Map<String, Object?> json) => _$CreateTweetResponseResultFromJson(json);
  
  @JsonKey(name: 'tweet_results')
  final CreateTweet? tweetResults;

  Map<String, Object?> toJson() => _$CreateTweetResponseResultToJson(this);
}
