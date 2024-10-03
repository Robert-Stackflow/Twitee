// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_tweets_data.dart';

part 'user_tweets_response.g.dart';

@JsonSerializable()
class UserTweetsResponse  {
  const UserTweetsResponse({
    required this.data,
  });
  
  factory UserTweetsResponse.fromJson(Map<String, Object?> json) => _$UserTweetsResponseFromJson(json);
  
  final UserTweetsData data;

  Map<String, Object?> toJson() => _$UserTweetsResponseToJson(this);
}
