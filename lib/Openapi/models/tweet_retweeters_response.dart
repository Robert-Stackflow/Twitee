// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_retweeters_response_data.dart';

part 'tweet_retweeters_response.g.dart';

@JsonSerializable()
class TweetRetweetersResponse  {
  const TweetRetweetersResponse({
    required this.data,
  });
  
  factory TweetRetweetersResponse.fromJson(Map<String, Object?> json) => _$TweetRetweetersResponseFromJson(json);
  
  final TweetRetweetersResponseData data;

  Map<String, Object?> toJson() => _$TweetRetweetersResponseToJson(this);
}
