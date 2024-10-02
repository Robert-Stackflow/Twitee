// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unfavorite_tweet.freezed.dart';
part 'unfavorite_tweet.g.dart';

@Freezed()
 class UnfavoriteTweet with _$UnfavoriteTweet {
  const factory UnfavoriteTweet({
    @JsonKey(name: 'unfavorite_tweet')
    required String unfavoriteTweet,
  }) = _UnfavoriteTweet;
  
  factory UnfavoriteTweet.fromJson(Map<String, Object?> json) => _$UnfavoriteTweetFromJson(json);
}
