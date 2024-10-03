// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_platform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetCardPlatform _$TweetCardPlatformFromJson(Map<String, dynamic> json) =>
    TweetCardPlatform(
      audience: TweetCardPlatformAudience.fromJson(
          json['audience'] as Map<String, dynamic>),
      device: TweetCardPlatformDevice.fromJson(
          json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetCardPlatformToJson(TweetCardPlatform instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'device': instance.device,
    };
