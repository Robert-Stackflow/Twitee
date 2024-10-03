// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_highlights_tweets_result.dart';

part 'user_highlights_tweets_user.g.dart';

@JsonSerializable()
class UserHighlightsTweetsUser  {
  const UserHighlightsTweetsUser({
    required this.result,
  });
  
  factory UserHighlightsTweetsUser.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsUserFromJson(json);
  
  final UserHighlightsTweetsResult result;

  Map<String, Object?> toJson() => _$UserHighlightsTweetsUserToJson(this);
}
