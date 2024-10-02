// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_tweet.freezed.dart';
part 'favorite_tweet.g.dart';

@Freezed()
 class FavoriteTweet with _$FavoriteTweet {
  const factory FavoriteTweet({
    @JsonKey(name: 'favorite_tweet')
    required String favoriteTweet,
  }) = _FavoriteTweet;
  
  factory FavoriteTweet.fromJson(Map<String, Object?> json) => _$FavoriteTweetFromJson(json);
}
