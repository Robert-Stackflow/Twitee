// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet.dart';

part 'create_tweet.g.dart';

@JsonSerializable()
class CreateTweet  {
  const CreateTweet({
    required this.result,
  });
  
  factory CreateTweet.fromJson(Map<String, Object?> json) => _$CreateTweetFromJson(json);
  
  final Tweet result;

  Map<String, Object?> toJson() => _$CreateTweetToJson(this);
}
