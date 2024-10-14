// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_platform_audience_name.dart';

part 'tweet_card_platform_audience.g.dart';

@JsonSerializable()
class TweetCardPlatformAudience {
  const TweetCardPlatformAudience({
    required this.name,
  });

  factory TweetCardPlatformAudience.fromJson(Map<String, Object?> json) =>
      _$TweetCardPlatformAudienceFromJson(json);

  final TweetCardPlatformAudienceName name;

  Map<String, Object?> toJson() => _$TweetCardPlatformAudienceToJson(this);
}
