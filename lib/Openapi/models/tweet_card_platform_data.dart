// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_platform.dart';

part 'tweet_card_platform_data.g.dart';

@JsonSerializable()
class TweetCardPlatformData {
  const TweetCardPlatformData({
    required this.platform,
  });

  factory TweetCardPlatformData.fromJson(Map<String, Object?> json) =>
      _$TweetCardPlatformDataFromJson(json);

  final TweetCardPlatform platform;

  Map<String, Object?> toJson() => _$TweetCardPlatformDataToJson(this);
}
