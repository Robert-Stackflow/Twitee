// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum TweetLegacyLimitedActions {
  @JsonValue('limited_replies')
  limitedReplies('limited_replies'),
  @JsonValue('non_compliant')
  nonCompliant('non_compliant'),
  @JsonValue('dynamic_product_ad')
  dynamicProductAd('dynamic_product_ad'),
  @JsonValue('stale_tweet')
  staleTweet('stale_tweet'),
  @JsonValue('community_tweet_non_member_public_community')
  communityTweetNonMemberPublicCommunity(
      'community_tweet_non_member_public_community'),
  @JsonValue('community_tweet_non_member_closed_community')
  communityTweetNonMemberClosedCommunity(
      'community_tweet_non_member_closed_community'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const TweetLegacyLimitedActions(this.json);

  factory TweetLegacyLimitedActions.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
