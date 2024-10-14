// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_interstitial_text_entity_ref.dart';

part 'tweet_interstitial_text_entity.g.dart';

@JsonSerializable()
class TweetInterstitialTextEntity {
  const TweetInterstitialTextEntity({
    required this.fromIndex,
    required this.ref,
    required this.toIndex,
  });

  factory TweetInterstitialTextEntity.fromJson(Map<String, Object?> json) =>
      _$TweetInterstitialTextEntityFromJson(json);

  final int fromIndex;
  final TweetInterstitialTextEntityRef ref;
  final int toIndex;

  Map<String, Object?> toJson() => _$TweetInterstitialTextEntityToJson(this);
}
