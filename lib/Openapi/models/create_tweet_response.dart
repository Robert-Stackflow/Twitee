// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_tweet_response_data.dart';

part 'create_tweet_response.g.dart';

@JsonSerializable()
class CreateTweetResponse  {
  const CreateTweetResponse({
    required this.data,
  });
  
  factory CreateTweetResponse.fromJson(Map<String, Object?> json) => _$CreateTweetResponseFromJson(json);
  
  final CreateTweetResponseData data;

  Map<String, Object?> toJson() => _$CreateTweetResponseToJson(this);
}
