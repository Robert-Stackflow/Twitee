// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_interstitial_text_entity.dart';

part 'tweet_interstitial_reveal_text.g.dart';

@JsonSerializable()
class TweetInterstitialRevealText  {
  const TweetInterstitialRevealText({
    required this.entities,
    required this.rtl,
    required this.text,
  });
  
  factory TweetInterstitialRevealText.fromJson(Map<String, Object?> json) => _$TweetInterstitialRevealTextFromJson(json);
  
  final List<TweetInterstitialTextEntity> entities;
  final bool rtl;
  final String text;

  Map<String, Object?> toJson() => _$TweetInterstitialRevealTextToJson(this);
}
