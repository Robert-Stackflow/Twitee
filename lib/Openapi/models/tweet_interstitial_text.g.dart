// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_interstitial_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetInterstitialText _$TweetInterstitialTextFromJson(
        Map<String, dynamic> json) =>
    TweetInterstitialText(
      entities: (json['entities'] as List<dynamic>)
          .map((e) =>
              TweetInterstitialTextEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rtl: json['rtl'] as bool,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TweetInterstitialTextToJson(
        TweetInterstitialText instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'rtl': instance.rtl,
      'text': instance.text,
    };
