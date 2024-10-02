// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_card_platform.dart';

part 'tweet_card_platform_data.freezed.dart';
part 'tweet_card_platform_data.g.dart';

@Freezed()
class TweetCardPlatformData with _$TweetCardPlatformData {
  const factory TweetCardPlatformData({
    required TweetCardPlatform platform,
  }) = _TweetCardPlatformData;
  
  factory TweetCardPlatformData.fromJson(Map<String, Object?> json) => _$TweetCardPlatformDataFromJson(json);
}
