// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'favorite_tweet.g.dart';

@JsonSerializable()
class FavoriteTweet  {
  const FavoriteTweet({
    required this.favoriteTweet,
  });
  
  factory FavoriteTweet.fromJson(Map<String, Object?> json) => _$FavoriteTweetFromJson(json);
  
  @JsonKey(name: 'favorite_tweet')
  final String? favoriteTweet;

  Map<String, Object?> toJson() => _$FavoriteTweetToJson(this);
}
