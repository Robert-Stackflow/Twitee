// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_interstitial_text_entity.dart';

part 'tweet_interstitial_text.freezed.dart';
part 'tweet_interstitial_text.g.dart';

@Freezed()
 class TweetInterstitialText with _$TweetInterstitialText {
  const factory TweetInterstitialText({
    required List<TweetInterstitialTextEntity> entities,
    required bool rtl,
    required String text,
  }) = _TweetInterstitialText;
  
  factory TweetInterstitialText.fromJson(Map<String, Object?> json) => _$TweetInterstitialTextFromJson(json);
}
