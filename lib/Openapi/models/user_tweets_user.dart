// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_tweets_result.dart';

part 'user_tweets_user.g.dart';

@JsonSerializable()
class UserTweetsUser  {
  const UserTweetsUser({
    required this.result,
  });
  
  factory UserTweetsUser.fromJson(Map<String, Object?> json) => _$UserTweetsUserFromJson(json);
  
  final UserTweetsResult result;

  Map<String, Object?> toJson() => _$UserTweetsUserToJson(this);
}
