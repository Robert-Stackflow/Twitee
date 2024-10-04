// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'twitter_time_format.dart';
import 'user_legacy_verified_type.dart';

part 'user_legacy.g.dart';

@JsonSerializable()
class UserLegacy {
  UserLegacy({
    required this.id,
    required this.idStr,
    required this.following,
    required this.blocking,
    required this.canDm,
    required this.canMediaTag,
    required this.createdAt,
    required this.defaultProfile,
    required this.defaultProfileImage,
    required this.description,
    required this.entities,
    required this.fastFollowersCount,
    required this.favouritesCount,
    required this.followRequestSent,
    required this.followedBy,
    required this.followersCount,
    required this.blockedBy,
    required this.friendsCount,
    required this.hasCustomTimelines,
    required this.isTranslator,
    required this.listedCount,
    required this.location,
    required this.mediaCount,
    required this.muting,
    required this.name,
    required this.normalFollowersCount,
    required this.notifications,
    required this.pinnedTweetIdsStr,
    required this.withheldInCountries,
    required this.profileBannerExtensions,
    required this.profileBannerUrl,
    required this.profileImageExtensions,
    required this.profileImageUrlHttps,
    required this.profileInterstitialType,
    required this.protected,
    required this.screenName,
    required this.statusesCount,
    required this.translatorType,
    required this.url,
    required this.verified,
    required this.verifiedType,
    required this.wantRetweets,
    required this.possiblySensitive,
  });

  factory UserLegacy.fromJson(Map<String, Object?> json) =>
      _$UserLegacyFromJson(json);

  int? id;
  @JsonKey(name: 'id_str')
  String? idStr;
  @JsonKey(name: 'blocked_by')
  bool? blockedBy;
  bool? blocking;
  @JsonKey(name: 'can_dm')
  final bool? canDm;
  @JsonKey(name: 'can_media_tag')
  final bool? canMediaTag;
  @JsonKey(name: 'created_at')
  final TwitterTimeFormat? createdAt;
  @JsonKey(name: 'default_profile')
  final bool? defaultProfile;
  @JsonKey(name: 'default_profile_image')
  final bool? defaultProfileImage;
  final String description;
  final dynamic entities;
  @JsonKey(name: 'fast_followers_count')
  final int? fastFollowersCount;
  @JsonKey(name: 'favourites_count')
  final int? favouritesCount;
  @JsonKey(name: 'follow_request_sent')
  final bool? followRequestSent;
  @JsonKey(name: 'followed_by')
  bool? followedBy;
  @JsonKey(name: 'followers_count')
  int? followersCount;
  bool? following;
  @JsonKey(name: 'friends_count')
  int? friendsCount;
  @JsonKey(name: 'has_custom_timelines')
  final bool? hasCustomTimelines;
  @JsonKey(name: 'is_translator')
  final bool? isTranslator;
  @JsonKey(name: 'listed_count')
  final int? listedCount;
  final String location;
  @JsonKey(name: 'media_count')
  final int? mediaCount;
  bool? muting;
  final String name;
  @JsonKey(name: 'normal_followers_count')
  final int? normalFollowersCount;
  final bool? notifications;
  @JsonKey(name: 'pinned_tweet_ids_str')
  final List<String?>? pinnedTweetIdsStr;
  @JsonKey(name: 'possibly_sensitive')
  final bool? possiblySensitive;
  @JsonKey(name: 'profile_banner_extensions')
  final dynamic profileBannerExtensions;
  @JsonKey(name: 'profile_banner_url')
  final String? profileBannerUrl;
  @JsonKey(name: 'profile_image_extensions')
  final dynamic profileImageExtensions;
  @JsonKey(name: 'profile_image_url_https')
  final String? profileImageUrlHttps;
  @JsonKey(name: 'profile_interstitial_type')
  final String? profileInterstitialType;
  final bool? protected;
  @JsonKey(name: 'screen_name')
  final String? screenName;
  @JsonKey(name: 'statuses_count')
  final int? statusesCount;
  @JsonKey(name: 'translator_type')
  final String? translatorType;
  final String? url;
  final bool verified;
  @JsonKey(name: 'verified_type')
  final UserLegacyVerifiedType? verifiedType;
  @JsonKey(name: 'want_retweets')
  final bool? wantRetweets;
  @JsonKey(name: 'withheld_in_countries')
  final List<String?>? withheldInCountries;

  bool get isFriend => (following ?? false) && (followedBy ?? false);

  Map<String, Object?> toJson() => _$UserLegacyToJson(this);
}
