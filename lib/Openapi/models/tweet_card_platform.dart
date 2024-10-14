// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_platform_audience.dart';
import 'tweet_card_platform_device.dart';

part 'tweet_card_platform.g.dart';

@JsonSerializable()
class TweetCardPlatform {
  const TweetCardPlatform({
    required this.audience,
    required this.device,
  });

  factory TweetCardPlatform.fromJson(Map<String, Object?> json) =>
      _$TweetCardPlatformFromJson(json);

  final TweetCardPlatformAudience audience;
  final TweetCardPlatformDevice device;

  Map<String, Object?> toJson() => _$TweetCardPlatformToJson(this);
}
