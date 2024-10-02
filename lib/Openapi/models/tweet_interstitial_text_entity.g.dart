// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_interstitial_text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetInterstitialTextEntityImpl _$$TweetInterstitialTextEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetInterstitialTextEntityImpl(
      fromIndex: (json['fromIndex'] as num).toInt(),
      ref: TweetInterstitialTextEntityRef.fromJson(
          json['ref'] as Map<String, dynamic>),
      toIndex: (json['toIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$TweetInterstitialTextEntityImplToJson(
        _$TweetInterstitialTextEntityImpl instance) =>
    <String, dynamic>{
      'fromIndex': instance.fromIndex,
      'ref': instance.ref,
      'toIndex': instance.toIndex,
    };
