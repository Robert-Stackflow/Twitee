// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_highlights_tweets_user.dart';

part 'user_highlights_tweets_data.g.dart';

@JsonSerializable()
class UserHighlightsTweetsData {
  const UserHighlightsTweetsData({
    required this.user,
  });

  factory UserHighlightsTweetsData.fromJson(Map<String, Object?> json) =>
      _$UserHighlightsTweetsDataFromJson(json);

  final UserHighlightsTweetsUser user;

  Map<String, Object?> toJson() => _$UserHighlightsTweetsDataToJson(this);
}
