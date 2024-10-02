// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'twitter_time_format.dart';
import 'user_legacy_verified_type.dart';

part 'user_legacy.freezed.dart';
part 'user_legacy.g.dart';

@Freezed()
 class UserLegacy with _$UserLegacy {
  const factory UserLegacy({
    required bool following,
    required bool blocking,
    @JsonKey(name: 'can_dm')
    required bool canDm,
    @JsonKey(name: 'can_media_tag')
    required bool canMediaTag,
    @JsonKey(name: 'created_at')
    required TwitterTimeFormat createdAt,
    @JsonKey(name: 'default_profile')
    required bool defaultProfile,
    @JsonKey(name: 'default_profile_image')
    required bool defaultProfileImage,
    required String description,
    required dynamic entities,
    @JsonKey(name: 'fast_followers_count')
    required int fastFollowersCount,
    @JsonKey(name: 'favourites_count')
    required int favouritesCount,
    @JsonKey(name: 'follow_request_sent')
    required bool followRequestSent,
    @JsonKey(name: 'followed_by')
    required bool followedBy,
    @JsonKey(name: 'followers_count')
    required int followersCount,
    @JsonKey(name: 'blocked_by')
    required bool blockedBy,
    @JsonKey(name: 'friends_count')
    required int friendsCount,
    @JsonKey(name: 'has_custom_timelines')
    required bool hasCustomTimelines,
    @JsonKey(name: 'is_translator')
    required bool isTranslator,
    @JsonKey(name: 'listed_count')
    required int listedCount,
    required String location,
    @JsonKey(name: 'media_count')
    required int mediaCount,
    required bool muting,
    required String name,
    @JsonKey(name: 'normal_followers_count')
    required int normalFollowersCount,
    required bool notifications,
    @JsonKey(name: 'pinned_tweet_ids_str')
    required List<String> pinnedTweetIdsStr,
    @JsonKey(name: 'withheld_in_countries')
    required List<String> withheldInCountries,
    @JsonKey(name: 'profile_banner_extensions')
    required dynamic profileBannerExtensions,
    @JsonKey(name: 'profile_banner_url')
    required String profileBannerUrl,
    @JsonKey(name: 'profile_image_extensions')
    required dynamic profileImageExtensions,
    @JsonKey(name: 'profile_image_url_https')
    required String profileImageUrlHttps,
    @JsonKey(name: 'profile_interstitial_type')
    required String profileInterstitialType,
    required bool protected,
    @JsonKey(name: 'screen_name')
    required String screenName,
    @JsonKey(name: 'statuses_count')
    required int statusesCount,
    @JsonKey(name: 'translator_type')
    required String translatorType,
    required String url,
    required bool verified,
    @JsonKey(name: 'verified_type')
    required UserLegacyVerifiedType verifiedType,
    @JsonKey(name: 'want_retweets')
    required bool wantRetweets,
    @JsonKey(name: 'possibly_sensitive')
    required bool possiblySensitive,
  }) = _UserLegacy;
  
  factory UserLegacy.fromJson(Map<String, Object?> json) => _$UserLegacyFromJson(json);
}
