// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_card_platform_audience.dart';
import 'tweet_card_platform_device.dart';

part 'tweet_card_platform.freezed.dart';
part 'tweet_card_platform.g.dart';

@Freezed()
 class TweetCardPlatform with _$TweetCardPlatform {
  const factory TweetCardPlatform({
    required TweetCardPlatformAudience audience,
    required TweetCardPlatformDevice device,
  }) = _TweetCardPlatform;
  
  factory TweetCardPlatform.fromJson(Map<String, Object?> json) => _$TweetCardPlatformFromJson(json);
}
