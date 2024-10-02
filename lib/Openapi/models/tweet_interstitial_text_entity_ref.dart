// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_interstitial_text_entity_ref_type.dart';
import 'tweet_interstitial_text_entity_ref_url_type.dart';

part 'tweet_interstitial_text_entity_ref.freezed.dart';
part 'tweet_interstitial_text_entity_ref.g.dart';

@Freezed()
 class TweetInterstitialTextEntityRef with _$TweetInterstitialTextEntityRef {
  const factory TweetInterstitialTextEntityRef({
    required TweetInterstitialTextEntityRefType type,
    required String url,
    required TweetInterstitialTextEntityRefUrlType urlType,
  }) = _TweetInterstitialTextEntityRef;
  
  factory TweetInterstitialTextEntityRef.fromJson(Map<String, Object?> json) => _$TweetInterstitialTextEntityRefFromJson(json);
}
