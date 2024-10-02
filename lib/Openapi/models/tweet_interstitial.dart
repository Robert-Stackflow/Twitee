// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_interstitial_display_type.dart';
import 'tweet_interstitial_reveal_text.dart';
import 'tweet_interstitial_text.dart';
import 'type_name.dart';

part 'tweet_interstitial.freezed.dart';
part 'tweet_interstitial.g.dart';

@Freezed()
class TweetInterstitial with _$TweetInterstitial {
  const factory TweetInterstitial({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required TweetInterstitialDisplayType displayType,
    required TweetInterstitialRevealText revealText,
    required TweetInterstitialText text,
  }) = _TweetInterstitial;
  
  factory TweetInterstitial.fromJson(Map<String, Object?> json) => _$TweetInterstitialFromJson(json);
}
