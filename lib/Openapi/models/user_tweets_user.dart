// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_tweets_result.dart';

part 'user_tweets_user.freezed.dart';
part 'user_tweets_user.g.dart';

@Freezed()
class UserTweetsUser with _$UserTweetsUser {
  const factory UserTweetsUser({
    required UserTweetsResult result,
  }) = _UserTweetsUser;
  
  factory UserTweetsUser.fromJson(Map<String, Object?> json) => _$UserTweetsUserFromJson(json);
}
