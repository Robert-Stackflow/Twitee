// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_visibility_results_blurred_image_interstitial.dart';

part 'media_visibility_results.g.dart';

@JsonSerializable()
class MediaVisibilityResults  {
  const MediaVisibilityResults({
    required this.blurredImageInterstitial,
  });
  
  factory MediaVisibilityResults.fromJson(Map<String, Object?> json) => _$MediaVisibilityResultsFromJson(json);
  
  @JsonKey(name: 'blurred_image_interstitial')
  final MediaVisibilityResultsBlurredImageInterstitial? blurredImageInterstitial;

  Map<String, Object?> toJson() => _$MediaVisibilityResultsToJson(this);
}
