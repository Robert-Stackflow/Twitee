// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_interstitial_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetInterstitialTextImpl _$$TweetInterstitialTextImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetInterstitialTextImpl(
      entities: (json['entities'] as List<dynamic>)
          .map((e) =>
              TweetInterstitialTextEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rtl: json['rtl'] as bool,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TweetInterstitialTextImplToJson(
        _$TweetInterstitialTextImpl instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'rtl': instance.rtl,
      'text': instance.text,
    };
