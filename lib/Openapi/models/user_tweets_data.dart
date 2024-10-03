// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_tweets_user.dart';

part 'user_tweets_data.g.dart';

@JsonSerializable()
class UserTweetsData  {
  const UserTweetsData({
    required this.user,
  });
  
  factory UserTweetsData.fromJson(Map<String, Object?> json) => _$UserTweetsDataFromJson(json);
  
  final UserTweetsUser user;

  Map<String, Object?> toJson() => _$UserTweetsDataToJson(this);
}
