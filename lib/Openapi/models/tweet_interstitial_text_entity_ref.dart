// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_interstitial_text_entity_ref_type.dart';
import 'tweet_interstitial_text_entity_ref_url_type.dart';

part 'tweet_interstitial_text_entity_ref.g.dart';

@JsonSerializable()
class TweetInterstitialTextEntityRef {
  const TweetInterstitialTextEntityRef({
    required this.type,
    required this.url,
    required this.urlType,
  });

  factory TweetInterstitialTextEntityRef.fromJson(Map<String, Object?> json) =>
      _$TweetInterstitialTextEntityRefFromJson(json);

  final TweetInterstitialTextEntityRefType type;
  final String url;
  final TweetInterstitialTextEntityRefUrlType urlType;

  Map<String, Object?> toJson() => _$TweetInterstitialTextEntityRefToJson(this);
}
