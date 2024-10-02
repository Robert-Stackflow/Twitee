// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  @JsonKey(name: 'affiliates_highlighted_label')
  dynamic get affiliatesHighlightedLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_account')
  dynamic get businessAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_subscriptions_count')
  int get creatorSubscriptionsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_graduated_access')
  bool get hasGraduatedAccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_hidden_likes_on_profile')
  bool get hasHiddenLikesOnProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_nft_avatar')
  bool get hasNftAvatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlights_info')
  UserHighlightsInfo get highlightsInfo => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_blue_verified')
  bool get isBlueVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_profile_translatable')
  bool get isProfileTranslatable => throw _privateConstructorUsedError;
  UserLegacy get legacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'legacy_extended_profile')
  UserLegacyExtendedProfile get legacyExtendedProfile =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'premium_gifting_eligible')
  bool get premiumGiftingEligible => throw _privateConstructorUsedError;
  UserProfessional get professional => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_shape')
  UserProfileImageShape get profileImageShape =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;
  @JsonKey(name: 'super_follow_eligible')
  bool get superFollowEligible => throw _privateConstructorUsedError;
  @JsonKey(name: 'super_followed_by')
  bool get superFollowedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'super_following')
  bool get superFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'tipjar_settings')
  UserTipJarSettings get tipjarSettings => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_seed_tweet_count')
  int get userSeedTweetCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_info')
  UserVerificationInfo get verificationInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      @JsonKey(name: 'affiliates_highlighted_label')
      dynamic affiliatesHighlightedLabel,
      @JsonKey(name: 'business_account') dynamic businessAccount,
      @JsonKey(name: 'creator_subscriptions_count')
      int creatorSubscriptionsCount,
      @JsonKey(name: 'has_graduated_access') bool hasGraduatedAccess,
      @JsonKey(name: 'has_hidden_likes_on_profile')
      bool hasHiddenLikesOnProfile,
      @JsonKey(name: 'has_nft_avatar') bool hasNftAvatar,
      @JsonKey(name: 'highlights_info') UserHighlightsInfo highlightsInfo,
      String id,
      @JsonKey(name: 'is_blue_verified') bool isBlueVerified,
      @JsonKey(name: 'is_profile_translatable') bool isProfileTranslatable,
      UserLegacy legacy,
      @JsonKey(name: 'legacy_extended_profile')
      UserLegacyExtendedProfile legacyExtendedProfile,
      @JsonKey(name: 'premium_gifting_eligible') bool premiumGiftingEligible,
      UserProfessional professional,
      @JsonKey(name: 'profile_image_shape')
      UserProfileImageShape profileImageShape,
      @JsonKey(name: 'rest_id') String restId,
      @JsonKey(name: 'super_follow_eligible') bool superFollowEligible,
      @JsonKey(name: 'super_followed_by') bool superFollowedBy,
      @JsonKey(name: 'super_following') bool superFollowing,
      @JsonKey(name: 'tipjar_settings') UserTipJarSettings tipjarSettings,
      @JsonKey(name: 'user_seed_tweet_count') int userSeedTweetCount,
      @JsonKey(name: 'verification_info')
      UserVerificationInfo verificationInfo});

  $UserHighlightsInfoCopyWith<$Res> get highlightsInfo;
  $UserLegacyCopyWith<$Res> get legacy;
  $UserLegacyExtendedProfileCopyWith<$Res> get legacyExtendedProfile;
  $UserProfessionalCopyWith<$Res> get professional;
  $UserTipJarSettingsCopyWith<$Res> get tipjarSettings;
  $UserVerificationInfoCopyWith<$Res> get verificationInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? affiliatesHighlightedLabel = freezed,
    Object? businessAccount = freezed,
    Object? creatorSubscriptionsCount = null,
    Object? hasGraduatedAccess = null,
    Object? hasHiddenLikesOnProfile = null,
    Object? hasNftAvatar = null,
    Object? highlightsInfo = null,
    Object? id = null,
    Object? isBlueVerified = null,
    Object? isProfileTranslatable = null,
    Object? legacy = null,
    Object? legacyExtendedProfile = null,
    Object? premiumGiftingEligible = null,
    Object? professional = null,
    Object? profileImageShape = null,
    Object? restId = null,
    Object? superFollowEligible = null,
    Object? superFollowedBy = null,
    Object? superFollowing = null,
    Object? tipjarSettings = null,
    Object? userSeedTweetCount = null,
    Object? verificationInfo = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      affiliatesHighlightedLabel: freezed == affiliatesHighlightedLabel
          ? _value.affiliatesHighlightedLabel
          : affiliatesHighlightedLabel // ignore: cast_nullable_to_non_nullable
              as dynamic,
      businessAccount: freezed == businessAccount
          ? _value.businessAccount
          : businessAccount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorSubscriptionsCount: null == creatorSubscriptionsCount
          ? _value.creatorSubscriptionsCount
          : creatorSubscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasGraduatedAccess: null == hasGraduatedAccess
          ? _value.hasGraduatedAccess
          : hasGraduatedAccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasHiddenLikesOnProfile: null == hasHiddenLikesOnProfile
          ? _value.hasHiddenLikesOnProfile
          : hasHiddenLikesOnProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNftAvatar: null == hasNftAvatar
          ? _value.hasNftAvatar
          : hasNftAvatar // ignore: cast_nullable_to_non_nullable
              as bool,
      highlightsInfo: null == highlightsInfo
          ? _value.highlightsInfo
          : highlightsInfo // ignore: cast_nullable_to_non_nullable
              as UserHighlightsInfo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isBlueVerified: null == isBlueVerified
          ? _value.isBlueVerified
          : isBlueVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isProfileTranslatable: null == isProfileTranslatable
          ? _value.isProfileTranslatable
          : isProfileTranslatable // ignore: cast_nullable_to_non_nullable
              as bool,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as UserLegacy,
      legacyExtendedProfile: null == legacyExtendedProfile
          ? _value.legacyExtendedProfile
          : legacyExtendedProfile // ignore: cast_nullable_to_non_nullable
              as UserLegacyExtendedProfile,
      premiumGiftingEligible: null == premiumGiftingEligible
          ? _value.premiumGiftingEligible
          : premiumGiftingEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      professional: null == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as UserProfessional,
      profileImageShape: null == profileImageShape
          ? _value.profileImageShape
          : profileImageShape // ignore: cast_nullable_to_non_nullable
              as UserProfileImageShape,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      superFollowEligible: null == superFollowEligible
          ? _value.superFollowEligible
          : superFollowEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      superFollowedBy: null == superFollowedBy
          ? _value.superFollowedBy
          : superFollowedBy // ignore: cast_nullable_to_non_nullable
              as bool,
      superFollowing: null == superFollowing
          ? _value.superFollowing
          : superFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      tipjarSettings: null == tipjarSettings
          ? _value.tipjarSettings
          : tipjarSettings // ignore: cast_nullable_to_non_nullable
              as UserTipJarSettings,
      userSeedTweetCount: null == userSeedTweetCount
          ? _value.userSeedTweetCount
          : userSeedTweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      verificationInfo: null == verificationInfo
          ? _value.verificationInfo
          : verificationInfo // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfo,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHighlightsInfoCopyWith<$Res> get highlightsInfo {
    return $UserHighlightsInfoCopyWith<$Res>(_value.highlightsInfo, (value) {
      return _then(_value.copyWith(highlightsInfo: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLegacyCopyWith<$Res> get legacy {
    return $UserLegacyCopyWith<$Res>(_value.legacy, (value) {
      return _then(_value.copyWith(legacy: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLegacyExtendedProfileCopyWith<$Res> get legacyExtendedProfile {
    return $UserLegacyExtendedProfileCopyWith<$Res>(
        _value.legacyExtendedProfile, (value) {
      return _then(_value.copyWith(legacyExtendedProfile: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfessionalCopyWith<$Res> get professional {
    return $UserProfessionalCopyWith<$Res>(_value.professional, (value) {
      return _then(_value.copyWith(professional: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserTipJarSettingsCopyWith<$Res> get tipjarSettings {
    return $UserTipJarSettingsCopyWith<$Res>(_value.tipjarSettings, (value) {
      return _then(_value.copyWith(tipjarSettings: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserVerificationInfoCopyWith<$Res> get verificationInfo {
    return $UserVerificationInfoCopyWith<$Res>(_value.verificationInfo,
        (value) {
      return _then(_value.copyWith(verificationInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      @JsonKey(name: 'affiliates_highlighted_label')
      dynamic affiliatesHighlightedLabel,
      @JsonKey(name: 'business_account') dynamic businessAccount,
      @JsonKey(name: 'creator_subscriptions_count')
      int creatorSubscriptionsCount,
      @JsonKey(name: 'has_graduated_access') bool hasGraduatedAccess,
      @JsonKey(name: 'has_hidden_likes_on_profile')
      bool hasHiddenLikesOnProfile,
      @JsonKey(name: 'has_nft_avatar') bool hasNftAvatar,
      @JsonKey(name: 'highlights_info') UserHighlightsInfo highlightsInfo,
      String id,
      @JsonKey(name: 'is_blue_verified') bool isBlueVerified,
      @JsonKey(name: 'is_profile_translatable') bool isProfileTranslatable,
      UserLegacy legacy,
      @JsonKey(name: 'legacy_extended_profile')
      UserLegacyExtendedProfile legacyExtendedProfile,
      @JsonKey(name: 'premium_gifting_eligible') bool premiumGiftingEligible,
      UserProfessional professional,
      @JsonKey(name: 'profile_image_shape')
      UserProfileImageShape profileImageShape,
      @JsonKey(name: 'rest_id') String restId,
      @JsonKey(name: 'super_follow_eligible') bool superFollowEligible,
      @JsonKey(name: 'super_followed_by') bool superFollowedBy,
      @JsonKey(name: 'super_following') bool superFollowing,
      @JsonKey(name: 'tipjar_settings') UserTipJarSettings tipjarSettings,
      @JsonKey(name: 'user_seed_tweet_count') int userSeedTweetCount,
      @JsonKey(name: 'verification_info')
      UserVerificationInfo verificationInfo});

  @override
  $UserHighlightsInfoCopyWith<$Res> get highlightsInfo;
  @override
  $UserLegacyCopyWith<$Res> get legacy;
  @override
  $UserLegacyExtendedProfileCopyWith<$Res> get legacyExtendedProfile;
  @override
  $UserProfessionalCopyWith<$Res> get professional;
  @override
  $UserTipJarSettingsCopyWith<$Res> get tipjarSettings;
  @override
  $UserVerificationInfoCopyWith<$Res> get verificationInfo;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? affiliatesHighlightedLabel = freezed,
    Object? businessAccount = freezed,
    Object? creatorSubscriptionsCount = null,
    Object? hasGraduatedAccess = null,
    Object? hasHiddenLikesOnProfile = null,
    Object? hasNftAvatar = null,
    Object? highlightsInfo = null,
    Object? id = null,
    Object? isBlueVerified = null,
    Object? isProfileTranslatable = null,
    Object? legacy = null,
    Object? legacyExtendedProfile = null,
    Object? premiumGiftingEligible = null,
    Object? professional = null,
    Object? profileImageShape = null,
    Object? restId = null,
    Object? superFollowEligible = null,
    Object? superFollowedBy = null,
    Object? superFollowing = null,
    Object? tipjarSettings = null,
    Object? userSeedTweetCount = null,
    Object? verificationInfo = null,
  }) {
    return _then(_$UserImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      affiliatesHighlightedLabel: freezed == affiliatesHighlightedLabel
          ? _value.affiliatesHighlightedLabel
          : affiliatesHighlightedLabel // ignore: cast_nullable_to_non_nullable
              as dynamic,
      businessAccount: freezed == businessAccount
          ? _value.businessAccount
          : businessAccount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorSubscriptionsCount: null == creatorSubscriptionsCount
          ? _value.creatorSubscriptionsCount
          : creatorSubscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasGraduatedAccess: null == hasGraduatedAccess
          ? _value.hasGraduatedAccess
          : hasGraduatedAccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasHiddenLikesOnProfile: null == hasHiddenLikesOnProfile
          ? _value.hasHiddenLikesOnProfile
          : hasHiddenLikesOnProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNftAvatar: null == hasNftAvatar
          ? _value.hasNftAvatar
          : hasNftAvatar // ignore: cast_nullable_to_non_nullable
              as bool,
      highlightsInfo: null == highlightsInfo
          ? _value.highlightsInfo
          : highlightsInfo // ignore: cast_nullable_to_non_nullable
              as UserHighlightsInfo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isBlueVerified: null == isBlueVerified
          ? _value.isBlueVerified
          : isBlueVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isProfileTranslatable: null == isProfileTranslatable
          ? _value.isProfileTranslatable
          : isProfileTranslatable // ignore: cast_nullable_to_non_nullable
              as bool,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as UserLegacy,
      legacyExtendedProfile: null == legacyExtendedProfile
          ? _value.legacyExtendedProfile
          : legacyExtendedProfile // ignore: cast_nullable_to_non_nullable
              as UserLegacyExtendedProfile,
      premiumGiftingEligible: null == premiumGiftingEligible
          ? _value.premiumGiftingEligible
          : premiumGiftingEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      professional: null == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as UserProfessional,
      profileImageShape: null == profileImageShape
          ? _value.profileImageShape
          : profileImageShape // ignore: cast_nullable_to_non_nullable
              as UserProfileImageShape,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      superFollowEligible: null == superFollowEligible
          ? _value.superFollowEligible
          : superFollowEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      superFollowedBy: null == superFollowedBy
          ? _value.superFollowedBy
          : superFollowedBy // ignore: cast_nullable_to_non_nullable
              as bool,
      superFollowing: null == superFollowing
          ? _value.superFollowing
          : superFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      tipjarSettings: null == tipjarSettings
          ? _value.tipjarSettings
          : tipjarSettings // ignore: cast_nullable_to_non_nullable
              as UserTipJarSettings,
      userSeedTweetCount: null == userSeedTweetCount
          ? _value.userSeedTweetCount
          : userSeedTweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      verificationInfo: null == verificationInfo
          ? _value.verificationInfo
          : verificationInfo // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      @JsonKey(name: 'affiliates_highlighted_label')
      required this.affiliatesHighlightedLabel,
      @JsonKey(name: 'business_account') required this.businessAccount,
      @JsonKey(name: 'creator_subscriptions_count')
      required this.creatorSubscriptionsCount,
      @JsonKey(name: 'has_graduated_access') required this.hasGraduatedAccess,
      @JsonKey(name: 'has_hidden_likes_on_profile')
      required this.hasHiddenLikesOnProfile,
      @JsonKey(name: 'has_nft_avatar') required this.hasNftAvatar,
      @JsonKey(name: 'highlights_info') required this.highlightsInfo,
      required this.id,
      @JsonKey(name: 'is_blue_verified') required this.isBlueVerified,
      @JsonKey(name: 'is_profile_translatable')
      required this.isProfileTranslatable,
      required this.legacy,
      @JsonKey(name: 'legacy_extended_profile')
      required this.legacyExtendedProfile,
      @JsonKey(name: 'premium_gifting_eligible')
      required this.premiumGiftingEligible,
      required this.professional,
      @JsonKey(name: 'profile_image_shape') required this.profileImageShape,
      @JsonKey(name: 'rest_id') required this.restId,
      @JsonKey(name: 'super_follow_eligible') required this.superFollowEligible,
      @JsonKey(name: 'super_followed_by') required this.superFollowedBy,
      @JsonKey(name: 'super_following') required this.superFollowing,
      @JsonKey(name: 'tipjar_settings') required this.tipjarSettings,
      @JsonKey(name: 'user_seed_tweet_count') required this.userSeedTweetCount,
      @JsonKey(name: 'verification_info') required this.verificationInfo});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  @JsonKey(name: 'affiliates_highlighted_label')
  final dynamic affiliatesHighlightedLabel;
  @override
  @JsonKey(name: 'business_account')
  final dynamic businessAccount;
  @override
  @JsonKey(name: 'creator_subscriptions_count')
  final int creatorSubscriptionsCount;
  @override
  @JsonKey(name: 'has_graduated_access')
  final bool hasGraduatedAccess;
  @override
  @JsonKey(name: 'has_hidden_likes_on_profile')
  final bool hasHiddenLikesOnProfile;
  @override
  @JsonKey(name: 'has_nft_avatar')
  final bool hasNftAvatar;
  @override
  @JsonKey(name: 'highlights_info')
  final UserHighlightsInfo highlightsInfo;
  @override
  final String id;
  @override
  @JsonKey(name: 'is_blue_verified')
  final bool isBlueVerified;
  @override
  @JsonKey(name: 'is_profile_translatable')
  final bool isProfileTranslatable;
  @override
  final UserLegacy legacy;
  @override
  @JsonKey(name: 'legacy_extended_profile')
  final UserLegacyExtendedProfile legacyExtendedProfile;
  @override
  @JsonKey(name: 'premium_gifting_eligible')
  final bool premiumGiftingEligible;
  @override
  final UserProfessional professional;
  @override
  @JsonKey(name: 'profile_image_shape')
  final UserProfileImageShape profileImageShape;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;
  @override
  @JsonKey(name: 'super_follow_eligible')
  final bool superFollowEligible;
  @override
  @JsonKey(name: 'super_followed_by')
  final bool superFollowedBy;
  @override
  @JsonKey(name: 'super_following')
  final bool superFollowing;
  @override
  @JsonKey(name: 'tipjar_settings')
  final UserTipJarSettings tipjarSettings;
  @override
  @JsonKey(name: 'user_seed_tweet_count')
  final int userSeedTweetCount;
  @override
  @JsonKey(name: 'verification_info')
  final UserVerificationInfo verificationInfo;

  @override
  String toString() {
    return 'User(privateTypename: $privateTypename, affiliatesHighlightedLabel: $affiliatesHighlightedLabel, businessAccount: $businessAccount, creatorSubscriptionsCount: $creatorSubscriptionsCount, hasGraduatedAccess: $hasGraduatedAccess, hasHiddenLikesOnProfile: $hasHiddenLikesOnProfile, hasNftAvatar: $hasNftAvatar, highlightsInfo: $highlightsInfo, id: $id, isBlueVerified: $isBlueVerified, isProfileTranslatable: $isProfileTranslatable, legacy: $legacy, legacyExtendedProfile: $legacyExtendedProfile, premiumGiftingEligible: $premiumGiftingEligible, professional: $professional, profileImageShape: $profileImageShape, restId: $restId, superFollowEligible: $superFollowEligible, superFollowedBy: $superFollowedBy, superFollowing: $superFollowing, tipjarSettings: $tipjarSettings, userSeedTweetCount: $userSeedTweetCount, verificationInfo: $verificationInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            const DeepCollectionEquality().equals(
                other.affiliatesHighlightedLabel, affiliatesHighlightedLabel) &&
            const DeepCollectionEquality()
                .equals(other.businessAccount, businessAccount) &&
            (identical(other.creatorSubscriptionsCount,
                    creatorSubscriptionsCount) ||
                other.creatorSubscriptionsCount == creatorSubscriptionsCount) &&
            (identical(other.hasGraduatedAccess, hasGraduatedAccess) ||
                other.hasGraduatedAccess == hasGraduatedAccess) &&
            (identical(
                    other.hasHiddenLikesOnProfile, hasHiddenLikesOnProfile) ||
                other.hasHiddenLikesOnProfile == hasHiddenLikesOnProfile) &&
            (identical(other.hasNftAvatar, hasNftAvatar) ||
                other.hasNftAvatar == hasNftAvatar) &&
            (identical(other.highlightsInfo, highlightsInfo) ||
                other.highlightsInfo == highlightsInfo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBlueVerified, isBlueVerified) ||
                other.isBlueVerified == isBlueVerified) &&
            (identical(other.isProfileTranslatable, isProfileTranslatable) ||
                other.isProfileTranslatable == isProfileTranslatable) &&
            (identical(other.legacy, legacy) || other.legacy == legacy) &&
            (identical(other.legacyExtendedProfile, legacyExtendedProfile) ||
                other.legacyExtendedProfile == legacyExtendedProfile) &&
            (identical(other.premiumGiftingEligible, premiumGiftingEligible) ||
                other.premiumGiftingEligible == premiumGiftingEligible) &&
            (identical(other.professional, professional) ||
                other.professional == professional) &&
            (identical(other.profileImageShape, profileImageShape) ||
                other.profileImageShape == profileImageShape) &&
            (identical(other.restId, restId) || other.restId == restId) &&
            (identical(other.superFollowEligible, superFollowEligible) ||
                other.superFollowEligible == superFollowEligible) &&
            (identical(other.superFollowedBy, superFollowedBy) ||
                other.superFollowedBy == superFollowedBy) &&
            (identical(other.superFollowing, superFollowing) ||
                other.superFollowing == superFollowing) &&
            (identical(other.tipjarSettings, tipjarSettings) ||
                other.tipjarSettings == tipjarSettings) &&
            (identical(other.userSeedTweetCount, userSeedTweetCount) ||
                other.userSeedTweetCount == userSeedTweetCount) &&
            (identical(other.verificationInfo, verificationInfo) ||
                other.verificationInfo == verificationInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        privateTypename,
        const DeepCollectionEquality().hash(affiliatesHighlightedLabel),
        const DeepCollectionEquality().hash(businessAccount),
        creatorSubscriptionsCount,
        hasGraduatedAccess,
        hasHiddenLikesOnProfile,
        hasNftAvatar,
        highlightsInfo,
        id,
        isBlueVerified,
        isProfileTranslatable,
        legacy,
        legacyExtendedProfile,
        premiumGiftingEligible,
        professional,
        profileImageShape,
        restId,
        superFollowEligible,
        superFollowedBy,
        superFollowing,
        tipjarSettings,
        userSeedTweetCount,
        verificationInfo
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      @JsonKey(name: 'affiliates_highlighted_label')
      required final dynamic affiliatesHighlightedLabel,
      @JsonKey(name: 'business_account') required final dynamic businessAccount,
      @JsonKey(name: 'creator_subscriptions_count')
      required final int creatorSubscriptionsCount,
      @JsonKey(name: 'has_graduated_access')
      required final bool hasGraduatedAccess,
      @JsonKey(name: 'has_hidden_likes_on_profile')
      required final bool hasHiddenLikesOnProfile,
      @JsonKey(name: 'has_nft_avatar') required final bool hasNftAvatar,
      @JsonKey(name: 'highlights_info')
      required final UserHighlightsInfo highlightsInfo,
      required final String id,
      @JsonKey(name: 'is_blue_verified') required final bool isBlueVerified,
      @JsonKey(name: 'is_profile_translatable')
      required final bool isProfileTranslatable,
      required final UserLegacy legacy,
      @JsonKey(name: 'legacy_extended_profile')
      required final UserLegacyExtendedProfile legacyExtendedProfile,
      @JsonKey(name: 'premium_gifting_eligible')
      required final bool premiumGiftingEligible,
      required final UserProfessional professional,
      @JsonKey(name: 'profile_image_shape')
      required final UserProfileImageShape profileImageShape,
      @JsonKey(name: 'rest_id') required final String restId,
      @JsonKey(name: 'super_follow_eligible')
      required final bool superFollowEligible,
      @JsonKey(name: 'super_followed_by') required final bool superFollowedBy,
      @JsonKey(name: 'super_following') required final bool superFollowing,
      @JsonKey(name: 'tipjar_settings')
      required final UserTipJarSettings tipjarSettings,
      @JsonKey(name: 'user_seed_tweet_count')
      required final int userSeedTweetCount,
      @JsonKey(name: 'verification_info')
      required final UserVerificationInfo verificationInfo}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  @JsonKey(name: 'affiliates_highlighted_label')
  dynamic get affiliatesHighlightedLabel;
  @override
  @JsonKey(name: 'business_account')
  dynamic get businessAccount;
  @override
  @JsonKey(name: 'creator_subscriptions_count')
  int get creatorSubscriptionsCount;
  @override
  @JsonKey(name: 'has_graduated_access')
  bool get hasGraduatedAccess;
  @override
  @JsonKey(name: 'has_hidden_likes_on_profile')
  bool get hasHiddenLikesOnProfile;
  @override
  @JsonKey(name: 'has_nft_avatar')
  bool get hasNftAvatar;
  @override
  @JsonKey(name: 'highlights_info')
  UserHighlightsInfo get highlightsInfo;
  @override
  String get id;
  @override
  @JsonKey(name: 'is_blue_verified')
  bool get isBlueVerified;
  @override
  @JsonKey(name: 'is_profile_translatable')
  bool get isProfileTranslatable;
  @override
  UserLegacy get legacy;
  @override
  @JsonKey(name: 'legacy_extended_profile')
  UserLegacyExtendedProfile get legacyExtendedProfile;
  @override
  @JsonKey(name: 'premium_gifting_eligible')
  bool get premiumGiftingEligible;
  @override
  UserProfessional get professional;
  @override
  @JsonKey(name: 'profile_image_shape')
  UserProfileImageShape get profileImageShape;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;
  @override
  @JsonKey(name: 'super_follow_eligible')
  bool get superFollowEligible;
  @override
  @JsonKey(name: 'super_followed_by')
  bool get superFollowedBy;
  @override
  @JsonKey(name: 'super_following')
  bool get superFollowing;
  @override
  @JsonKey(name: 'tipjar_settings')
  UserTipJarSettings get tipjarSettings;
  @override
  @JsonKey(name: 'user_seed_tweet_count')
  int get userSeedTweetCount;
  @override
  @JsonKey(name: 'verification_info')
  UserVerificationInfo get verificationInfo;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
