// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_card_platform_audience_name.dart';

part 'tweet_card_platform_audience.freezed.dart';
part 'tweet_card_platform_audience.g.dart';

@Freezed()
class TweetCardPlatformAudience with _$TweetCardPlatformAudience {
  const factory TweetCardPlatformAudience({
    required TweetCardPlatformAudienceName name,
  }) = _TweetCardPlatformAudience;
  
  factory TweetCardPlatformAudience.fromJson(Map<String, Object?> json) => _$TweetCardPlatformAudienceFromJson(json);
}
