// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_platform_audience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetCardPlatformAudienceImpl _$$TweetCardPlatformAudienceImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetCardPlatformAudienceImpl(
      name: TweetCardPlatformAudienceName.fromJson(json['name'] as String),
    );

Map<String, dynamic> _$$TweetCardPlatformAudienceImplToJson(
        _$TweetCardPlatformAudienceImpl instance) =>
    <String, dynamic>{
      'name': _$TweetCardPlatformAudienceNameEnumMap[instance.name]!,
    };

const _$TweetCardPlatformAudienceNameEnumMap = {
  TweetCardPlatformAudienceName.production: 'production',
  TweetCardPlatformAudienceName.$unknown: r'$unknown',
};
