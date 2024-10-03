// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_visibility_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaVisibilityResults _$MediaVisibilityResultsFromJson(
        Map<String, dynamic> json) =>
    MediaVisibilityResults(
      blurredImageInterstitial: json['blurred_image_interstitial'] == null
          ? null
          : MediaVisibilityResultsBlurredImageInterstitial.fromJson(
              json['blurred_image_interstitial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaVisibilityResultsToJson(
        MediaVisibilityResults instance) =>
    <String, dynamic>{
      'blurred_image_interstitial': instance.blurredImageInterstitial,
    };
