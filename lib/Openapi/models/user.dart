// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'community_data_role.dart';
import 'type_name.dart';
import 'user_highlights_info.dart';
import 'user_legacy.dart';
import 'user_legacy_extended_profile.dart';
import 'user_professional.dart';
import 'user_profile_image_shape.dart';
import 'user_tip_jar_settings.dart';
import 'user_union.dart';
import 'user_verification_info.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends UserUnion {
  const User({
    required this.communityRole,
    required this.privateTypename,
    required this.affiliatesHighlightedLabel,
    required this.businessAccount,
    required this.creatorSubscriptionsCount,
    required this.hasGraduatedAccess,
    required this.hasHiddenLikesOnProfile,
    required this.hasHiddenSubscriptionsOnProfile,
    required this.hasNftAvatar,
    required this.highlightsInfo,
    required this.id,
    required this.isBlueVerified,
    required this.isProfileTranslatable,
    required this.legacy,
    required this.legacyExtendedProfile,
    required this.premiumGiftingEligible,
    required this.professional,
    required this.profileImageShape,
    required this.restId,
    required this.superFollowEligible,
    required this.superFollowedBy,
    required this.superFollowing,
    required this.tipjarSettings,
    required this.userSeedTweetCount,
    required this.verificationInfo,
  });

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  @JsonKey(name: 'affiliates_highlighted_label')
  final dynamic affiliatesHighlightedLabel;
  @JsonKey(name: 'business_account')
  final dynamic businessAccount;
  @JsonKey(name: 'creator_subscriptions_count')
  final int? creatorSubscriptionsCount;
  @JsonKey(name: 'has_graduated_access')
  final bool? hasGraduatedAccess;
  @JsonKey(name: 'has_hidden_likes_on_profile')
  final bool? hasHiddenLikesOnProfile;
  @JsonKey(name: 'has_hidden_subscriptions_on_profile')
  final bool? hasHiddenSubscriptionsOnProfile;
  @JsonKey(name: 'has_nft_avatar')
  final bool? hasNftAvatar;
  @JsonKey(name: 'highlights_info')
  final UserHighlightsInfo? highlightsInfo;
  final String id;
  @JsonKey(name: 'is_blue_verified')
  final bool? isBlueVerified;
  @JsonKey(name: 'is_profile_translatable')
  final bool? isProfileTranslatable;
  final UserLegacy legacy;
  @JsonKey(name: 'community_role')
  final CommunityDataRole? communityRole;
  @JsonKey(name: 'legacy_extended_profile')
  final UserLegacyExtendedProfile? legacyExtendedProfile;
  @JsonKey(name: 'premium_gifting_eligible')
  final bool? premiumGiftingEligible;
  final UserProfessional? professional;
  @JsonKey(name: 'profile_image_shape')
  final UserProfileImageShape? profileImageShape;
  @JsonKey(name: 'rest_id')
  final String? restId;
  @JsonKey(name: 'super_follow_eligible')
  final bool? superFollowEligible;
  @JsonKey(name: 'super_followed_by')
  final bool? superFollowedBy;
  @JsonKey(name: 'super_following')
  final bool? superFollowing;
  @JsonKey(name: 'tipjar_settings')
  final UserTipJarSettings? tipjarSettings;
  @JsonKey(name: 'user_seed_tweet_count')
  final int? userSeedTweetCount;
  @JsonKey(name: 'verification_info')
  final UserVerificationInfo? verificationInfo;

  Map<String, Object?> toJson() => _$UserToJson(this);
}
