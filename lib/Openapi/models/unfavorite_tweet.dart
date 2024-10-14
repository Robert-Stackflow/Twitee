// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'unfavorite_tweet.g.dart';

@JsonSerializable()
class UnfavoriteTweet {
  const UnfavoriteTweet({
    required this.unfavoriteTweet,
  });

  factory UnfavoriteTweet.fromJson(Map<String, Object?> json) =>
      _$UnfavoriteTweetFromJson(json);

  @JsonKey(name: 'unfavorite_tweet')
  final String? unfavoriteTweet;

  Map<String, Object?> toJson() => _$UnfavoriteTweetToJson(this);
}
