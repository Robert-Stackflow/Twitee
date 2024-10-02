// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_highlights_tweets_result.dart';

part 'user_highlights_tweets_user.freezed.dart';
part 'user_highlights_tweets_user.g.dart';

@Freezed()
class UserHighlightsTweetsUser with _$UserHighlightsTweetsUser {
  const factory UserHighlightsTweetsUser({
    required UserHighlightsTweetsResult result,
  }) = _UserHighlightsTweetsUser;
  
  factory UserHighlightsTweetsUser.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsUserFromJson(json);
}
