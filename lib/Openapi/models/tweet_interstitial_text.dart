// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_interstitial_text_entity.dart';

part 'tweet_interstitial_text.g.dart';

@JsonSerializable()
class TweetInterstitialText {
  const TweetInterstitialText({
    required this.entities,
    required this.rtl,
    required this.text,
  });

  factory TweetInterstitialText.fromJson(Map<String, Object?> json) =>
      _$TweetInterstitialTextFromJson(json);

  final List<TweetInterstitialTextEntity> entities;
  final bool rtl;
  final String text;

  Map<String, Object?> toJson() => _$TweetInterstitialTextToJson(this);
}
