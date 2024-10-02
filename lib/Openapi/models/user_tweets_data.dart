// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_tweets_user.dart';

part 'user_tweets_data.freezed.dart';
part 'user_tweets_data.g.dart';

@Freezed()
class UserTweetsData with _$UserTweetsData {
  const factory UserTweetsData({
    required UserTweetsUser user,
  }) = _UserTweetsData;
  
  factory UserTweetsData.fromJson(Map<String, Object?> json) => _$UserTweetsDataFromJson(json);
}
