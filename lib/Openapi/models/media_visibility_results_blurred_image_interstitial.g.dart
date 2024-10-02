// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_visibility_results_blurred_image_interstitial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaVisibilityResultsBlurredImageInterstitialImpl
    _$$MediaVisibilityResultsBlurredImageInterstitialImplFromJson(
            Map<String, dynamic> json) =>
        _$MediaVisibilityResultsBlurredImageInterstitialImpl(
          opacity: json['opacity'] as num,
          text: TweetInterstitialText.fromJson(
              json['text'] as Map<String, dynamic>),
          title: TweetInterstitialText.fromJson(
              json['title'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$MediaVisibilityResultsBlurredImageInterstitialImplToJson(
            _$MediaVisibilityResultsBlurredImageInterstitialImpl instance) =>
        <String, dynamic>{
          'opacity': instance.opacity,
          'text': instance.text,
          'title': instance.title,
        };
