// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_interstitial_text.dart';

part 'media_visibility_results_blurred_image_interstitial.freezed.dart';
part 'media_visibility_results_blurred_image_interstitial.g.dart';

@Freezed()
class MediaVisibilityResultsBlurredImageInterstitial with _$MediaVisibilityResultsBlurredImageInterstitial {
  const factory MediaVisibilityResultsBlurredImageInterstitial({
    required num opacity,
    required TweetInterstitialText text,
    required TweetInterstitialText title,
  }) = _MediaVisibilityResultsBlurredImageInterstitial;
  
  factory MediaVisibilityResultsBlurredImageInterstitial.fromJson(Map<String, Object?> json) => _$MediaVisibilityResultsBlurredImageInterstitialFromJson(json);
}
