// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      privateTypename: json['__typename'] == null
          ? null
          : TypeName.fromJson(json['__typename'] as String),
      affiliatesHighlightedLabel: json['affiliates_highlighted_label'],
      businessAccount: json['business_account'],
      creatorSubscriptionsCount:
          (json['creator_subscriptions_count'] as num?)?.toInt(),
      hasGraduatedAccess: json['has_graduated_access'] as bool?,
      hasHiddenLikesOnProfile: json['has_hidden_likes_on_profile'] as bool?,
      hasHiddenSubscriptionsOnProfile:
          json['has_hidden_subscriptions_on_profile'] as bool?,
      hasNftAvatar: json['has_nft_avatar'] as bool?,
      highlightsInfo: json['highlights_info'] == null
          ? null
          : UserHighlightsInfo.fromJson(
              json['highlights_info'] as Map<String, dynamic>),
      id: json['id'] as String,
      isBlueVerified: json['is_blue_verified'] as bool?,
      isProfileTranslatable: json['is_profile_translatable'] as bool?,
      legacy: UserLegacy.fromJson(json['legacy'] as Map<String, dynamic>),
      legacyExtendedProfile: json['legacy_extended_profile'] == null
          ? null
          : UserLegacyExtendedProfile.fromJson(
              json['legacy_extended_profile'] as Map<String, dynamic>),
      premiumGiftingEligible: json['premium_gifting_eligible'] as bool?,
      professional: json['professional'] == null
          ? null
          : UserProfessional.fromJson(
              json['professional'] as Map<String, dynamic>),
      profileImageShape: json['profile_image_shape'] == null
          ? null
          : UserProfileImageShape.fromJson(
              json['profile_image_shape'] as String),
      restId: json['rest_id'] as String?,
      superFollowEligible: json['super_follow_eligible'] as bool?,
      superFollowedBy: json['super_followed_by'] as bool?,
      superFollowing: json['super_following'] as bool?,
      tipjarSettings: json['tipjar_settings'] == null
          ? null
          : UserTipJarSettings.fromJson(
              json['tipjar_settings'] as Map<String, dynamic>),
      userSeedTweetCount: (json['user_seed_tweet_count'] as num?)?.toInt(),
      verificationInfo: json['verification_info'] == null
          ? null
          : UserVerificationInfo.fromJson(
              json['verification_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename],
      'affiliates_highlighted_label': instance.affiliatesHighlightedLabel,
      'business_account': instance.businessAccount,
      'creator_subscriptions_count': instance.creatorSubscriptionsCount,
      'has_graduated_access': instance.hasGraduatedAccess,
      'has_hidden_likes_on_profile': instance.hasHiddenLikesOnProfile,
      'has_nft_avatar': instance.hasNftAvatar,
      'highlights_info': instance.highlightsInfo,
      'id': instance.id,
      'is_blue_verified': instance.isBlueVerified,
      'is_profile_translatable': instance.isProfileTranslatable,
      'legacy': instance.legacy,
      'legacy_extended_profile': instance.legacyExtendedProfile,
      'premium_gifting_eligible': instance.premiumGiftingEligible,
      'professional': instance.professional,
      'profile_image_shape':
          _$UserProfileImageShapeEnumMap[instance.profileImageShape],
      'rest_id': instance.restId,
      'super_follow_eligible': instance.superFollowEligible,
      'super_followed_by': instance.superFollowedBy,
      'super_following': instance.superFollowing,
      'tipjar_settings': instance.tipjarSettings,
      'user_seed_tweet_count': instance.userSeedTweetCount,
      'verification_info': instance.verificationInfo,
    };

const _$TypeNameEnumMap = {
  TypeName.timelineTweet: 'TimelineTweet',
  TypeName.timelineTimelineItem: 'TimelineTimelineItem',
  TypeName.timelineUser: 'TimelineUser',
  TypeName.timelineTimelineCursor: 'TimelineTimelineCursor',
  TypeName.tweetWithVisibilityResults: 'TweetWithVisibilityResults',
  TypeName.contextualTweetInterstitial: 'ContextualTweetInterstitial',
  TypeName.timelineTimelineModule: 'TimelineTimelineModule',
  TypeName.tweetTombstone: 'TweetTombstone',
  TypeName.timelinePrompt: 'TimelinePrompt',
  TypeName.timelineMessagePrompt: 'TimelineMessagePrompt',
  TypeName.timelineCommunity: 'TimelineCommunity',
  TypeName.tweetUnavailable: 'TweetUnavailable',
  TypeName.tweet: 'Tweet',
  TypeName.user: 'User',
  TypeName.userUnavailable: 'UserUnavailable',
  TypeName.community: 'Community',
  TypeName.communityDeleteActionUnavailable: 'CommunityDeleteActionUnavailable',
  TypeName.communityJoinAction: 'CommunityJoinAction',
  TypeName.communityLeaveActionUnavailable: 'CommunityLeaveActionUnavailable',
  TypeName.communityTweetPinActionUnavailable:
      'CommunityTweetPinActionUnavailable',
  TypeName.communityInvitesUnavailable: 'CommunityInvitesUnavailable',
  TypeName.communityJoinRequestsUnavailable: 'CommunityJoinRequestsUnavailable',
  TypeName.apiImage: 'ApiImage',
  TypeName.$unknown: r'$unknown',
};

const _$UserProfileImageShapeEnumMap = {
  UserProfileImageShape.circle: 'Circle',
  UserProfileImageShape.square: 'Square',
  UserProfileImageShape.hexagon: 'Hexagon',
  UserProfileImageShape.$unknown: r'$unknown',
};
