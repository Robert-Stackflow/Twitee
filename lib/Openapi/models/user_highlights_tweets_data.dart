// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_highlights_tweets_user.dart';

part 'user_highlights_tweets_data.freezed.dart';
part 'user_highlights_tweets_data.g.dart';

@Freezed()
 class UserHighlightsTweetsData with _$UserHighlightsTweetsData {
  const factory UserHighlightsTweetsData({
    required UserHighlightsTweetsUser user,
  }) = _UserHighlightsTweetsData;
  
  factory UserHighlightsTweetsData.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsDataFromJson(json);
}
