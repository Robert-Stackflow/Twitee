// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';
import 'user_highlights_info.dart';
import 'user_legacy.dart';
import 'user_legacy_extended_profile.dart';
import 'user_professional.dart';
import 'user_profile_image_shape.dart';
import 'user_tip_jar_settings.dart';
import 'user_verification_info.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
class User with _$User {
  const factory User({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    @JsonKey(name: 'affiliates_highlighted_label')
    required dynamic affiliatesHighlightedLabel,
    @JsonKey(name: 'business_account')
    required dynamic businessAccount,
    @JsonKey(name: 'creator_subscriptions_count')
    required int creatorSubscriptionsCount,
    @JsonKey(name: 'has_graduated_access')
    required bool hasGraduatedAccess,
    @JsonKey(name: 'has_hidden_likes_on_profile')
    required bool hasHiddenLikesOnProfile,
    @JsonKey(name: 'has_nft_avatar')
    required bool hasNftAvatar,
    @JsonKey(name: 'highlights_info')
    required UserHighlightsInfo highlightsInfo,
    required String id,
    @JsonKey(name: 'is_blue_verified')
    required bool isBlueVerified,
    @JsonKey(name: 'is_profile_translatable')
    required bool isProfileTranslatable,
    required UserLegacy legacy,
    @JsonKey(name: 'legacy_extended_profile')
    required UserLegacyExtendedProfile legacyExtendedProfile,
    @JsonKey(name: 'premium_gifting_eligible')
    required bool premiumGiftingEligible,
    required UserProfessional professional,
    @JsonKey(name: 'profile_image_shape')
    required UserProfileImageShape profileImageShape,
    @JsonKey(name: 'rest_id')
    required String restId,
    @JsonKey(name: 'super_follow_eligible')
    required bool superFollowEligible,
    @JsonKey(name: 'super_followed_by')
    required bool superFollowedBy,
    @JsonKey(name: 'super_following')
    required bool superFollowing,
    @JsonKey(name: 'tipjar_settings')
    required UserTipJarSettings tipjarSettings,
    @JsonKey(name: 'user_seed_tweet_count')
    required int userSeedTweetCount,
    @JsonKey(name: 'verification_info')
    required UserVerificationInfo verificationInfo,
  }) = _User;
  
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
