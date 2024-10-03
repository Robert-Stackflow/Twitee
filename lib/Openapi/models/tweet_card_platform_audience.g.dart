// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_platform_audience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetCardPlatformAudience _$TweetCardPlatformAudienceFromJson(
        Map<String, dynamic> json) =>
    TweetCardPlatformAudience(
      name: TweetCardPlatformAudienceName.fromJson(json['name'] as String),
    );

Map<String, dynamic> _$TweetCardPlatformAudienceToJson(
        TweetCardPlatformAudience instance) =>
    <String, dynamic>{
      'name': _$TweetCardPlatformAudienceNameEnumMap[instance.name]!,
    };

const _$TweetCardPlatformAudienceNameEnumMap = {
  TweetCardPlatformAudienceName.production: 'production',
  TweetCardPlatformAudienceName.$unknown: r'$unknown',
};
