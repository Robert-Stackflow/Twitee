// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_interstitial_text.dart';

part 'media_visibility_results_blurred_image_interstitial.g.dart';

@JsonSerializable()
class MediaVisibilityResultsBlurredImageInterstitial {
  const MediaVisibilityResultsBlurredImageInterstitial({
    required this.opacity,
    required this.text,
    required this.title,
  });

  factory MediaVisibilityResultsBlurredImageInterstitial.fromJson(
          Map<String, Object?> json) =>
      _$MediaVisibilityResultsBlurredImageInterstitialFromJson(json);

  final num opacity;
  final TweetInterstitialText text;
  final TweetInterstitialText title;

  Map<String, Object?> toJson() =>
      _$MediaVisibilityResultsBlurredImageInterstitialToJson(this);
}
