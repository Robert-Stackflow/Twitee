// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_interstitial_text_entity.dart';

part 'tweet_interstitial_reveal_text.freezed.dart';
part 'tweet_interstitial_reveal_text.g.dart';

@Freezed()
class TweetInterstitialRevealText with _$TweetInterstitialRevealText {
  const factory TweetInterstitialRevealText({
    required List<TweetInterstitialTextEntity> entities,
    required bool rtl,
    required String text,
  }) = _TweetInterstitialRevealText;
  
  factory TweetInterstitialRevealText.fromJson(Map<String, Object?> json) => _$TweetInterstitialRevealTextFromJson(json);
}
