// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_interstitial_text_entity_ref.dart';

part 'tweet_interstitial_text_entity.freezed.dart';
part 'tweet_interstitial_text_entity.g.dart';

@Freezed()
class TweetInterstitialTextEntity with _$TweetInterstitialTextEntity {
  const factory TweetInterstitialTextEntity({
    required int fromIndex,
    required TweetInterstitialTextEntityRef ref,
    required int toIndex,
  }) = _TweetInterstitialTextEntity;
  
  factory TweetInterstitialTextEntity.fromJson(Map<String, Object?> json) => _$TweetInterstitialTextEntityFromJson(json);
}
