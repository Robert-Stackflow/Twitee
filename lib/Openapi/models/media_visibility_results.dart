// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_visibility_results_blurred_image_interstitial.dart';

part 'media_visibility_results.freezed.dart';
part 'media_visibility_results.g.dart';

@Freezed()
 class MediaVisibilityResults with _$MediaVisibilityResults {
  const factory MediaVisibilityResults({
    @JsonKey(name: 'blurred_image_interstitial')
    required MediaVisibilityResultsBlurredImageInterstitial blurredImageInterstitial,
  }) = _MediaVisibilityResults;
  
  factory MediaVisibilityResults.fromJson(Map<String, Object?> json) => _$MediaVisibilityResultsFromJson(json);
}
