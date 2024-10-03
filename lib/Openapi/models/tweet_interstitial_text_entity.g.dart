// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_interstitial_text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetInterstitialTextEntity _$TweetInterstitialTextEntityFromJson(
        Map<String, dynamic> json) =>
    TweetInterstitialTextEntity(
      fromIndex: (json['fromIndex'] as num).toInt(),
      ref: TweetInterstitialTextEntityRef.fromJson(
          json['ref'] as Map<String, dynamic>),
      toIndex: (json['toIndex'] as num).toInt(),
    );

Map<String, dynamic> _$TweetInterstitialTextEntityToJson(
        TweetInterstitialTextEntity instance) =>
    <String, dynamic>{
      'fromIndex': instance.fromIndex,
      'ref': instance.ref,
      'toIndex': instance.toIndex,
    };
