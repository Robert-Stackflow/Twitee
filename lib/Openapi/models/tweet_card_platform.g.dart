// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_platform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetCardPlatformImpl _$$TweetCardPlatformImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetCardPlatformImpl(
      audience: TweetCardPlatformAudience.fromJson(
          json['audience'] as Map<String, dynamic>),
      device: TweetCardPlatformDevice.fromJson(
          json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TweetCardPlatformImplToJson(
        _$TweetCardPlatformImpl instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'device': instance.device,
    };
