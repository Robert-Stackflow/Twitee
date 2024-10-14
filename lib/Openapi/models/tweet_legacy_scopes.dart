// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tweet_legacy_scopes.g.dart';

@JsonSerializable()
class TweetLegacyScopes {
  const TweetLegacyScopes({
    required this.followers,
  });

  factory TweetLegacyScopes.fromJson(Map<String, Object?> json) =>
      _$TweetLegacyScopesFromJson(json);

  final bool followers;

  Map<String, Object?> toJson() => _$TweetLegacyScopesToJson(this);
}
