// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_interstitial_reveal_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetInterstitialRevealText _$TweetInterstitialRevealTextFromJson(
        Map<String, dynamic> json) =>
    TweetInterstitialRevealText(
      entities: (json['entities'] as List<dynamic>)
          .map((e) =>
              TweetInterstitialTextEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rtl: json['rtl'] as bool,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TweetInterstitialRevealTextToJson(
        TweetInterstitialRevealText instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'rtl': instance.rtl,
      'text': instance.text,
    };
