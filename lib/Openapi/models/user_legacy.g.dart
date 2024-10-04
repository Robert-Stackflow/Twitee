// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_legacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLegacy _$UserLegacyFromJson(Map<String, dynamic> json) => UserLegacy(
      id: json['id'] as int?,
      idStr: json['id_str'] as String?,
      following: json['following'] as bool?,
      blocking: json['blocking'] as bool?,
      canDm: json['can_dm'] as bool?,
      canMediaTag: json['can_media_tag'] as bool?,
      createdAt: json['created_at'] as String?,
      defaultProfile: json['default_profile'] as bool?,
      defaultProfileImage: json['default_profile_image'] as bool?,
      description: json['description'] as String,
      entities: json['entities'],
      fastFollowersCount: (json['fast_followers_count'] as num?)?.toInt(),
      favouritesCount: (json['favourites_count'] as num?)?.toInt(),
      followRequestSent: json['follow_request_sent'] as bool?,
      followedBy: json['followed_by'] as bool?,
      followersCount: (json['followers_count'] as num?)?.toInt(),
      blockedBy: json['blocked_by'] as bool?,
      friendsCount: (json['friends_count'] as num?)?.toInt(),
      hasCustomTimelines: json['has_custom_timelines'] as bool?,
      isTranslator: json['is_translator'] as bool?,
      listedCount: (json['listed_count'] as num?)?.toInt(),
      location: json['location'] as String,
      mediaCount: (json['media_count'] as num?)?.toInt(),
      muting: json['muting'] as bool?,
      name: json['name'] as String,
      normalFollowersCount: (json['normal_followers_count'] as num?)?.toInt(),
      notifications: json['notifications'] as bool?,
      pinnedTweetIdsStr: (json['pinned_tweet_ids_str'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      withheldInCountries: (json['withheld_in_countries'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      profileBannerExtensions: json['profile_banner_extensions'],
      profileBannerUrl: json['profile_banner_url'] as String?,
      profileImageExtensions: json['profile_image_extensions'],
      profileImageUrlHttps: json['profile_image_url_https'] as String?,
      profileInterstitialType: json['profile_interstitial_type'] as String?,
      protected: json['protected'] as bool?,
      screenName: json['screen_name'] as String?,
      statusesCount: (json['statuses_count'] as num?)?.toInt(),
      translatorType: json['translator_type'] as String?,
      url: json['url'] as String?,
      verified: json['verified'] as bool,
      verifiedType: json['verified_type'] == null
          ? null
          : UserLegacyVerifiedType.fromJson(json['verified_type'] as String),
      wantRetweets: json['want_retweets'] as bool?,
      possiblySensitive: json['possibly_sensitive'] as bool?,
    );

Map<String, dynamic> _$UserLegacyToJson(UserLegacy instance) =>
    <String, dynamic>{
      'blocked_by': instance.blockedBy,
      'blocking': instance.blocking,
      'can_dm': instance.canDm,
      'can_media_tag': instance.canMediaTag,
      'created_at': instance.createdAt,
      'default_profile': instance.defaultProfile,
      'default_profile_image': instance.defaultProfileImage,
      'description': instance.description,
      'entities': instance.entities,
      'fast_followers_count': instance.fastFollowersCount,
      'favourites_count': instance.favouritesCount,
      'follow_request_sent': instance.followRequestSent,
      'followed_by': instance.followedBy,
      'followers_count': instance.followersCount,
      'following': instance.following,
      'friends_count': instance.friendsCount,
      'has_custom_timelines': instance.hasCustomTimelines,
      'is_translator': instance.isTranslator,
      'listed_count': instance.listedCount,
      'location': instance.location,
      'media_count': instance.mediaCount,
      'muting': instance.muting,
      'name': instance.name,
      'normal_followers_count': instance.normalFollowersCount,
      'notifications': instance.notifications,
      'pinned_tweet_ids_str': instance.pinnedTweetIdsStr,
      'possibly_sensitive': instance.possiblySensitive,
      'profile_banner_extensions': instance.profileBannerExtensions,
      'profile_banner_url': instance.profileBannerUrl,
      'profile_image_extensions': instance.profileImageExtensions,
      'profile_image_url_https': instance.profileImageUrlHttps,
      'profile_interstitial_type': instance.profileInterstitialType,
      'protected': instance.protected,
      'screen_name': instance.screenName,
      'statuses_count': instance.statusesCount,
      'translator_type': instance.translatorType,
      'url': instance.url,
      'verified': instance.verified,
      'verified_type': _$UserLegacyVerifiedTypeEnumMap[instance.verifiedType],
      'want_retweets': instance.wantRetweets,
      'withheld_in_countries': instance.withheldInCountries,
    };

const _$UserLegacyVerifiedTypeEnumMap = {
  UserLegacyVerifiedType.business: 'Business',
  UserLegacyVerifiedType.government: 'Government',
  UserLegacyVerifiedType.$unknown: r'$unknown',
};
