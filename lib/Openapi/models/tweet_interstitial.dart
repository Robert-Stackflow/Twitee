// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_interstitial_display_type.dart';
import 'tweet_interstitial_reveal_text.dart';
import 'tweet_interstitial_text.dart';
import 'type_name.dart';

part 'tweet_interstitial.g.dart';

@JsonSerializable()
class TweetInterstitial {
  const TweetInterstitial({
    required this.privateTypename,
    required this.displayType,
    required this.revealText,
    required this.text,
  });

  factory TweetInterstitial.fromJson(Map<String, Object?> json) =>
      _$TweetInterstitialFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final TweetInterstitialDisplayType displayType;
  final TweetInterstitialRevealText revealText;
  final TweetInterstitialText text;

  Map<String, Object?> toJson() => _$TweetInterstitialToJson(this);
}
