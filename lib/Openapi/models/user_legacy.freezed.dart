// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_legacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLegacy _$UserLegacyFromJson(Map<String, dynamic> json) {
  return _UserLegacy.fromJson(json);
}

/// @nodoc
mixin _$UserLegacy {
  bool get following => throw _privateConstructorUsedError;
  bool get blocking => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_dm')
  bool get canDm => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_media_tag')
  bool get canMediaTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_profile')
  bool get defaultProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_profile_image')
  bool get defaultProfileImage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  dynamic get entities => throw _privateConstructorUsedError;
  @JsonKey(name: 'fast_followers_count')
  int get fastFollowersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'favourites_count')
  int get favouritesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_request_sent')
  bool get followRequestSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'followed_by')
  bool get followedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers_count')
  int get followersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'blocked_by')
  bool get blockedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'friends_count')
  int get friendsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_custom_timelines')
  bool get hasCustomTimelines => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_translator')
  bool get isTranslator => throw _privateConstructorUsedError;
  @JsonKey(name: 'listed_count')
  int get listedCount => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_count')
  int get mediaCount => throw _privateConstructorUsedError;
  bool get muting => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'normal_followers_count')
  int get normalFollowersCount => throw _privateConstructorUsedError;
  bool get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'pinned_tweet_ids_str')
  List<String> get pinnedTweetIdsStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'withheld_in_countries')
  List<String> get withheldInCountries => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_banner_extensions')
  dynamic get profileBannerExtensions => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_banner_url')
  String get profileBannerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_extensions')
  dynamic get profileImageExtensions => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url_https')
  String get profileImageUrlHttps => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_interstitial_type')
  String get profileInterstitialType => throw _privateConstructorUsedError;
  bool get protected => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen_name')
  String get screenName => throw _privateConstructorUsedError;
  @JsonKey(name: 'statuses_count')
  int get statusesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'translator_type')
  String get translatorType => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_type')
  UserLegacyVerifiedType get verifiedType => throw _privateConstructorUsedError;
  @JsonKey(name: 'want_retweets')
  bool get wantRetweets => throw _privateConstructorUsedError;
  @JsonKey(name: 'possibly_sensitive')
  bool get possiblySensitive => throw _privateConstructorUsedError;

  /// Serializes this UserLegacy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLegacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLegacyCopyWith<UserLegacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLegacyCopyWith<$Res> {
  factory $UserLegacyCopyWith(
          UserLegacy value, $Res Function(UserLegacy) then) =
      _$UserLegacyCopyWithImpl<$Res, UserLegacy>;
  @useResult
  $Res call(
      {bool following,
      bool blocking,
      @JsonKey(name: 'can_dm') bool canDm,
      @JsonKey(name: 'can_media_tag') bool canMediaTag,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'default_profile') bool defaultProfile,
      @JsonKey(name: 'default_profile_image') bool defaultProfileImage,
      String description,
      dynamic entities,
      @JsonKey(name: 'fast_followers_count') int fastFollowersCount,
      @JsonKey(name: 'favourites_count') int favouritesCount,
      @JsonKey(name: 'follow_request_sent') bool followRequestSent,
      @JsonKey(name: 'followed_by') bool followedBy,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'blocked_by') bool blockedBy,
      @JsonKey(name: 'friends_count') int friendsCount,
      @JsonKey(name: 'has_custom_timelines') bool hasCustomTimelines,
      @JsonKey(name: 'is_translator') bool isTranslator,
      @JsonKey(name: 'listed_count') int listedCount,
      String location,
      @JsonKey(name: 'media_count') int mediaCount,
      bool muting,
      String name,
      @JsonKey(name: 'normal_followers_count') int normalFollowersCount,
      bool notifications,
      @JsonKey(name: 'pinned_tweet_ids_str') List<String> pinnedTweetIdsStr,
      @JsonKey(name: 'withheld_in_countries') List<String> withheldInCountries,
      @JsonKey(name: 'profile_banner_extensions')
      dynamic profileBannerExtensions,
      @JsonKey(name: 'profile_banner_url') String profileBannerUrl,
      @JsonKey(name: 'profile_image_extensions') dynamic profileImageExtensions,
      @JsonKey(name: 'profile_image_url_https') String profileImageUrlHttps,
      @JsonKey(name: 'profile_interstitial_type')
      String profileInterstitialType,
      bool protected,
      @JsonKey(name: 'screen_name') String screenName,
      @JsonKey(name: 'statuses_count') int statusesCount,
      @JsonKey(name: 'translator_type') String translatorType,
      String url,
      bool verified,
      @JsonKey(name: 'verified_type') UserLegacyVerifiedType verifiedType,
      @JsonKey(name: 'want_retweets') bool wantRetweets,
      @JsonKey(name: 'possibly_sensitive') bool possiblySensitive});
}

/// @nodoc
class _$UserLegacyCopyWithImpl<$Res, $Val extends UserLegacy>
    implements $UserLegacyCopyWith<$Res> {
  _$UserLegacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLegacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
    Object? blocking = null,
    Object? canDm = null,
    Object? canMediaTag = null,
    Object? createdAt = null,
    Object? defaultProfile = null,
    Object? defaultProfileImage = null,
    Object? description = null,
    Object? entities = freezed,
    Object? fastFollowersCount = null,
    Object? favouritesCount = null,
    Object? followRequestSent = null,
    Object? followedBy = null,
    Object? followersCount = null,
    Object? blockedBy = null,
    Object? friendsCount = null,
    Object? hasCustomTimelines = null,
    Object? isTranslator = null,
    Object? listedCount = null,
    Object? location = null,
    Object? mediaCount = null,
    Object? muting = null,
    Object? name = null,
    Object? normalFollowersCount = null,
    Object? notifications = null,
    Object? pinnedTweetIdsStr = null,
    Object? withheldInCountries = null,
    Object? profileBannerExtensions = freezed,
    Object? profileBannerUrl = null,
    Object? profileImageExtensions = freezed,
    Object? profileImageUrlHttps = null,
    Object? profileInterstitialType = null,
    Object? protected = null,
    Object? screenName = null,
    Object? statusesCount = null,
    Object? translatorType = null,
    Object? url = null,
    Object? verified = null,
    Object? verifiedType = null,
    Object? wantRetweets = null,
    Object? possiblySensitive = null,
  }) {
    return _then(_value.copyWith(
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool,
      blocking: null == blocking
          ? _value.blocking
          : blocking // ignore: cast_nullable_to_non_nullable
              as bool,
      canDm: null == canDm
          ? _value.canDm
          : canDm // ignore: cast_nullable_to_non_nullable
              as bool,
      canMediaTag: null == canMediaTag
          ? _value.canMediaTag
          : canMediaTag // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      defaultProfile: null == defaultProfile
          ? _value.defaultProfile
          : defaultProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultProfileImage: null == defaultProfileImage
          ? _value.defaultProfileImage
          : defaultProfileImage // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fastFollowersCount: null == fastFollowersCount
          ? _value.fastFollowersCount
          : fastFollowersCount // ignore: cast_nullable_to_non_nullable
              as int,
      favouritesCount: null == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      followRequestSent: null == followRequestSent
          ? _value.followRequestSent
          : followRequestSent // ignore: cast_nullable_to_non_nullable
              as bool,
      followedBy: null == followedBy
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as bool,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      blockedBy: null == blockedBy
          ? _value.blockedBy
          : blockedBy // ignore: cast_nullable_to_non_nullable
              as bool,
      friendsCount: null == friendsCount
          ? _value.friendsCount
          : friendsCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasCustomTimelines: null == hasCustomTimelines
          ? _value.hasCustomTimelines
          : hasCustomTimelines // ignore: cast_nullable_to_non_nullable
              as bool,
      isTranslator: null == isTranslator
          ? _value.isTranslator
          : isTranslator // ignore: cast_nullable_to_non_nullable
              as bool,
      listedCount: null == listedCount
          ? _value.listedCount
          : listedCount // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      mediaCount: null == mediaCount
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int,
      muting: null == muting
          ? _value.muting
          : muting // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      normalFollowersCount: null == normalFollowersCount
          ? _value.normalFollowersCount
          : normalFollowersCount // ignore: cast_nullable_to_non_nullable
              as int,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      pinnedTweetIdsStr: null == pinnedTweetIdsStr
          ? _value.pinnedTweetIdsStr
          : pinnedTweetIdsStr // ignore: cast_nullable_to_non_nullable
              as List<String>,
      withheldInCountries: null == withheldInCountries
          ? _value.withheldInCountries
          : withheldInCountries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileBannerExtensions: freezed == profileBannerExtensions
          ? _value.profileBannerExtensions
          : profileBannerExtensions // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileBannerUrl: null == profileBannerUrl
          ? _value.profileBannerUrl
          : profileBannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageExtensions: freezed == profileImageExtensions
          ? _value.profileImageExtensions
          : profileImageExtensions // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImageUrlHttps: null == profileImageUrlHttps
          ? _value.profileImageUrlHttps
          : profileImageUrlHttps // ignore: cast_nullable_to_non_nullable
              as String,
      profileInterstitialType: null == profileInterstitialType
          ? _value.profileInterstitialType
          : profileInterstitialType // ignore: cast_nullable_to_non_nullable
              as String,
      protected: null == protected
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool,
      screenName: null == screenName
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String,
      statusesCount: null == statusesCount
          ? _value.statusesCount
          : statusesCount // ignore: cast_nullable_to_non_nullable
              as int,
      translatorType: null == translatorType
          ? _value.translatorType
          : translatorType // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedType: null == verifiedType
          ? _value.verifiedType
          : verifiedType // ignore: cast_nullable_to_non_nullable
              as UserLegacyVerifiedType,
      wantRetweets: null == wantRetweets
          ? _value.wantRetweets
          : wantRetweets // ignore: cast_nullable_to_non_nullable
              as bool,
      possiblySensitive: null == possiblySensitive
          ? _value.possiblySensitive
          : possiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLegacyImplCopyWith<$Res>
    implements $UserLegacyCopyWith<$Res> {
  factory _$$UserLegacyImplCopyWith(
          _$UserLegacyImpl value, $Res Function(_$UserLegacyImpl) then) =
      __$$UserLegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool following,
      bool blocking,
      @JsonKey(name: 'can_dm') bool canDm,
      @JsonKey(name: 'can_media_tag') bool canMediaTag,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'default_profile') bool defaultProfile,
      @JsonKey(name: 'default_profile_image') bool defaultProfileImage,
      String description,
      dynamic entities,
      @JsonKey(name: 'fast_followers_count') int fastFollowersCount,
      @JsonKey(name: 'favourites_count') int favouritesCount,
      @JsonKey(name: 'follow_request_sent') bool followRequestSent,
      @JsonKey(name: 'followed_by') bool followedBy,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'blocked_by') bool blockedBy,
      @JsonKey(name: 'friends_count') int friendsCount,
      @JsonKey(name: 'has_custom_timelines') bool hasCustomTimelines,
      @JsonKey(name: 'is_translator') bool isTranslator,
      @JsonKey(name: 'listed_count') int listedCount,
      String location,
      @JsonKey(name: 'media_count') int mediaCount,
      bool muting,
      String name,
      @JsonKey(name: 'normal_followers_count') int normalFollowersCount,
      bool notifications,
      @JsonKey(name: 'pinned_tweet_ids_str') List<String> pinnedTweetIdsStr,
      @JsonKey(name: 'withheld_in_countries') List<String> withheldInCountries,
      @JsonKey(name: 'profile_banner_extensions')
      dynamic profileBannerExtensions,
      @JsonKey(name: 'profile_banner_url') String profileBannerUrl,
      @JsonKey(name: 'profile_image_extensions') dynamic profileImageExtensions,
      @JsonKey(name: 'profile_image_url_https') String profileImageUrlHttps,
      @JsonKey(name: 'profile_interstitial_type')
      String profileInterstitialType,
      bool protected,
      @JsonKey(name: 'screen_name') String screenName,
      @JsonKey(name: 'statuses_count') int statusesCount,
      @JsonKey(name: 'translator_type') String translatorType,
      String url,
      bool verified,
      @JsonKey(name: 'verified_type') UserLegacyVerifiedType verifiedType,
      @JsonKey(name: 'want_retweets') bool wantRetweets,
      @JsonKey(name: 'possibly_sensitive') bool possiblySensitive});
}

/// @nodoc
class __$$UserLegacyImplCopyWithImpl<$Res>
    extends _$UserLegacyCopyWithImpl<$Res, _$UserLegacyImpl>
    implements _$$UserLegacyImplCopyWith<$Res> {
  __$$UserLegacyImplCopyWithImpl(
      _$UserLegacyImpl _value, $Res Function(_$UserLegacyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLegacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
    Object? blocking = null,
    Object? canDm = null,
    Object? canMediaTag = null,
    Object? createdAt = null,
    Object? defaultProfile = null,
    Object? defaultProfileImage = null,
    Object? description = null,
    Object? entities = freezed,
    Object? fastFollowersCount = null,
    Object? favouritesCount = null,
    Object? followRequestSent = null,
    Object? followedBy = null,
    Object? followersCount = null,
    Object? blockedBy = null,
    Object? friendsCount = null,
    Object? hasCustomTimelines = null,
    Object? isTranslator = null,
    Object? listedCount = null,
    Object? location = null,
    Object? mediaCount = null,
    Object? muting = null,
    Object? name = null,
    Object? normalFollowersCount = null,
    Object? notifications = null,
    Object? pinnedTweetIdsStr = null,
    Object? withheldInCountries = null,
    Object? profileBannerExtensions = freezed,
    Object? profileBannerUrl = null,
    Object? profileImageExtensions = freezed,
    Object? profileImageUrlHttps = null,
    Object? profileInterstitialType = null,
    Object? protected = null,
    Object? screenName = null,
    Object? statusesCount = null,
    Object? translatorType = null,
    Object? url = null,
    Object? verified = null,
    Object? verifiedType = null,
    Object? wantRetweets = null,
    Object? possiblySensitive = null,
  }) {
    return _then(_$UserLegacyImpl(
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool,
      blocking: null == blocking
          ? _value.blocking
          : blocking // ignore: cast_nullable_to_non_nullable
              as bool,
      canDm: null == canDm
          ? _value.canDm
          : canDm // ignore: cast_nullable_to_non_nullable
              as bool,
      canMediaTag: null == canMediaTag
          ? _value.canMediaTag
          : canMediaTag // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      defaultProfile: null == defaultProfile
          ? _value.defaultProfile
          : defaultProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultProfileImage: null == defaultProfileImage
          ? _value.defaultProfileImage
          : defaultProfileImage // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fastFollowersCount: null == fastFollowersCount
          ? _value.fastFollowersCount
          : fastFollowersCount // ignore: cast_nullable_to_non_nullable
              as int,
      favouritesCount: null == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      followRequestSent: null == followRequestSent
          ? _value.followRequestSent
          : followRequestSent // ignore: cast_nullable_to_non_nullable
              as bool,
      followedBy: null == followedBy
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as bool,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      blockedBy: null == blockedBy
          ? _value.blockedBy
          : blockedBy // ignore: cast_nullable_to_non_nullable
              as bool,
      friendsCount: null == friendsCount
          ? _value.friendsCount
          : friendsCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasCustomTimelines: null == hasCustomTimelines
          ? _value.hasCustomTimelines
          : hasCustomTimelines // ignore: cast_nullable_to_non_nullable
              as bool,
      isTranslator: null == isTranslator
          ? _value.isTranslator
          : isTranslator // ignore: cast_nullable_to_non_nullable
              as bool,
      listedCount: null == listedCount
          ? _value.listedCount
          : listedCount // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      mediaCount: null == mediaCount
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int,
      muting: null == muting
          ? _value.muting
          : muting // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      normalFollowersCount: null == normalFollowersCount
          ? _value.normalFollowersCount
          : normalFollowersCount // ignore: cast_nullable_to_non_nullable
              as int,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      pinnedTweetIdsStr: null == pinnedTweetIdsStr
          ? _value._pinnedTweetIdsStr
          : pinnedTweetIdsStr // ignore: cast_nullable_to_non_nullable
              as List<String>,
      withheldInCountries: null == withheldInCountries
          ? _value._withheldInCountries
          : withheldInCountries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileBannerExtensions: freezed == profileBannerExtensions
          ? _value.profileBannerExtensions
          : profileBannerExtensions // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileBannerUrl: null == profileBannerUrl
          ? _value.profileBannerUrl
          : profileBannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageExtensions: freezed == profileImageExtensions
          ? _value.profileImageExtensions
          : profileImageExtensions // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImageUrlHttps: null == profileImageUrlHttps
          ? _value.profileImageUrlHttps
          : profileImageUrlHttps // ignore: cast_nullable_to_non_nullable
              as String,
      profileInterstitialType: null == profileInterstitialType
          ? _value.profileInterstitialType
          : profileInterstitialType // ignore: cast_nullable_to_non_nullable
              as String,
      protected: null == protected
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool,
      screenName: null == screenName
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String,
      statusesCount: null == statusesCount
          ? _value.statusesCount
          : statusesCount // ignore: cast_nullable_to_non_nullable
              as int,
      translatorType: null == translatorType
          ? _value.translatorType
          : translatorType // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedType: null == verifiedType
          ? _value.verifiedType
          : verifiedType // ignore: cast_nullable_to_non_nullable
              as UserLegacyVerifiedType,
      wantRetweets: null == wantRetweets
          ? _value.wantRetweets
          : wantRetweets // ignore: cast_nullable_to_non_nullable
              as bool,
      possiblySensitive: null == possiblySensitive
          ? _value.possiblySensitive
          : possiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLegacyImpl implements _UserLegacy {
  const _$UserLegacyImpl(
      {required this.following,
      required this.blocking,
      @JsonKey(name: 'can_dm') required this.canDm,
      @JsonKey(name: 'can_media_tag') required this.canMediaTag,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'default_profile') required this.defaultProfile,
      @JsonKey(name: 'default_profile_image') required this.defaultProfileImage,
      required this.description,
      required this.entities,
      @JsonKey(name: 'fast_followers_count') required this.fastFollowersCount,
      @JsonKey(name: 'favourites_count') required this.favouritesCount,
      @JsonKey(name: 'follow_request_sent') required this.followRequestSent,
      @JsonKey(name: 'followed_by') required this.followedBy,
      @JsonKey(name: 'followers_count') required this.followersCount,
      @JsonKey(name: 'blocked_by') required this.blockedBy,
      @JsonKey(name: 'friends_count') required this.friendsCount,
      @JsonKey(name: 'has_custom_timelines') required this.hasCustomTimelines,
      @JsonKey(name: 'is_translator') required this.isTranslator,
      @JsonKey(name: 'listed_count') required this.listedCount,
      required this.location,
      @JsonKey(name: 'media_count') required this.mediaCount,
      required this.muting,
      required this.name,
      @JsonKey(name: 'normal_followers_count')
      required this.normalFollowersCount,
      required this.notifications,
      @JsonKey(name: 'pinned_tweet_ids_str')
      required final List<String> pinnedTweetIdsStr,
      @JsonKey(name: 'withheld_in_countries')
      required final List<String> withheldInCountries,
      @JsonKey(name: 'profile_banner_extensions')
      required this.profileBannerExtensions,
      @JsonKey(name: 'profile_banner_url') required this.profileBannerUrl,
      @JsonKey(name: 'profile_image_extensions')
      required this.profileImageExtensions,
      @JsonKey(name: 'profile_image_url_https')
      required this.profileImageUrlHttps,
      @JsonKey(name: 'profile_interstitial_type')
      required this.profileInterstitialType,
      required this.protected,
      @JsonKey(name: 'screen_name') required this.screenName,
      @JsonKey(name: 'statuses_count') required this.statusesCount,
      @JsonKey(name: 'translator_type') required this.translatorType,
      required this.url,
      required this.verified,
      @JsonKey(name: 'verified_type') required this.verifiedType,
      @JsonKey(name: 'want_retweets') required this.wantRetweets,
      @JsonKey(name: 'possibly_sensitive') required this.possiblySensitive})
      : _pinnedTweetIdsStr = pinnedTweetIdsStr,
        _withheldInCountries = withheldInCountries;

  factory _$UserLegacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLegacyImplFromJson(json);

  @override
  final bool following;
  @override
  final bool blocking;
  @override
  @JsonKey(name: 'can_dm')
  final bool canDm;
  @override
  @JsonKey(name: 'can_media_tag')
  final bool canMediaTag;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'default_profile')
  final bool defaultProfile;
  @override
  @JsonKey(name: 'default_profile_image')
  final bool defaultProfileImage;
  @override
  final String description;
  @override
  final dynamic entities;
  @override
  @JsonKey(name: 'fast_followers_count')
  final int fastFollowersCount;
  @override
  @JsonKey(name: 'favourites_count')
  final int favouritesCount;
  @override
  @JsonKey(name: 'follow_request_sent')
  final bool followRequestSent;
  @override
  @JsonKey(name: 'followed_by')
  final bool followedBy;
  @override
  @JsonKey(name: 'followers_count')
  final int followersCount;
  @override
  @JsonKey(name: 'blocked_by')
  final bool blockedBy;
  @override
  @JsonKey(name: 'friends_count')
  final int friendsCount;
  @override
  @JsonKey(name: 'has_custom_timelines')
  final bool hasCustomTimelines;
  @override
  @JsonKey(name: 'is_translator')
  final bool isTranslator;
  @override
  @JsonKey(name: 'listed_count')
  final int listedCount;
  @override
  final String location;
  @override
  @JsonKey(name: 'media_count')
  final int mediaCount;
  @override
  final bool muting;
  @override
  final String name;
  @override
  @JsonKey(name: 'normal_followers_count')
  final int normalFollowersCount;
  @override
  final bool notifications;
  final List<String> _pinnedTweetIdsStr;
  @override
  @JsonKey(name: 'pinned_tweet_ids_str')
  List<String> get pinnedTweetIdsStr {
    if (_pinnedTweetIdsStr is EqualUnmodifiableListView)
      return _pinnedTweetIdsStr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pinnedTweetIdsStr);
  }

  final List<String> _withheldInCountries;
  @override
  @JsonKey(name: 'withheld_in_countries')
  List<String> get withheldInCountries {
    if (_withheldInCountries is EqualUnmodifiableListView)
      return _withheldInCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withheldInCountries);
  }

  @override
  @JsonKey(name: 'profile_banner_extensions')
  final dynamic profileBannerExtensions;
  @override
  @JsonKey(name: 'profile_banner_url')
  final String profileBannerUrl;
  @override
  @JsonKey(name: 'profile_image_extensions')
  final dynamic profileImageExtensions;
  @override
  @JsonKey(name: 'profile_image_url_https')
  final String profileImageUrlHttps;
  @override
  @JsonKey(name: 'profile_interstitial_type')
  final String profileInterstitialType;
  @override
  final bool protected;
  @override
  @JsonKey(name: 'screen_name')
  final String screenName;
  @override
  @JsonKey(name: 'statuses_count')
  final int statusesCount;
  @override
  @JsonKey(name: 'translator_type')
  final String translatorType;
  @override
  final String url;
  @override
  final bool verified;
  @override
  @JsonKey(name: 'verified_type')
  final UserLegacyVerifiedType verifiedType;
  @override
  @JsonKey(name: 'want_retweets')
  final bool wantRetweets;
  @override
  @JsonKey(name: 'possibly_sensitive')
  final bool possiblySensitive;

  @override
  String toString() {
    return 'UserLegacy(following: $following, blocking: $blocking, canDm: $canDm, canMediaTag: $canMediaTag, createdAt: $createdAt, defaultProfile: $defaultProfile, defaultProfileImage: $defaultProfileImage, description: $description, entities: $entities, fastFollowersCount: $fastFollowersCount, favouritesCount: $favouritesCount, followRequestSent: $followRequestSent, followedBy: $followedBy, followersCount: $followersCount, blockedBy: $blockedBy, friendsCount: $friendsCount, hasCustomTimelines: $hasCustomTimelines, isTranslator: $isTranslator, listedCount: $listedCount, location: $location, mediaCount: $mediaCount, muting: $muting, name: $name, normalFollowersCount: $normalFollowersCount, notifications: $notifications, pinnedTweetIdsStr: $pinnedTweetIdsStr, withheldInCountries: $withheldInCountries, profileBannerExtensions: $profileBannerExtensions, profileBannerUrl: $profileBannerUrl, profileImageExtensions: $profileImageExtensions, profileImageUrlHttps: $profileImageUrlHttps, profileInterstitialType: $profileInterstitialType, protected: $protected, screenName: $screenName, statusesCount: $statusesCount, translatorType: $translatorType, url: $url, verified: $verified, verifiedType: $verifiedType, wantRetweets: $wantRetweets, possiblySensitive: $possiblySensitive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLegacyImpl &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.blocking, blocking) ||
                other.blocking == blocking) &&
            (identical(other.canDm, canDm) || other.canDm == canDm) &&
            (identical(other.canMediaTag, canMediaTag) ||
                other.canMediaTag == canMediaTag) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.defaultProfile, defaultProfile) ||
                other.defaultProfile == defaultProfile) &&
            (identical(other.defaultProfileImage, defaultProfileImage) ||
                other.defaultProfileImage == defaultProfileImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.entities, entities) &&
            (identical(other.fastFollowersCount, fastFollowersCount) ||
                other.fastFollowersCount == fastFollowersCount) &&
            (identical(other.favouritesCount, favouritesCount) ||
                other.favouritesCount == favouritesCount) &&
            (identical(other.followRequestSent, followRequestSent) ||
                other.followRequestSent == followRequestSent) &&
            (identical(other.followedBy, followedBy) ||
                other.followedBy == followedBy) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.blockedBy, blockedBy) ||
                other.blockedBy == blockedBy) &&
            (identical(other.friendsCount, friendsCount) ||
                other.friendsCount == friendsCount) &&
            (identical(other.hasCustomTimelines, hasCustomTimelines) ||
                other.hasCustomTimelines == hasCustomTimelines) &&
            (identical(other.isTranslator, isTranslator) ||
                other.isTranslator == isTranslator) &&
            (identical(other.listedCount, listedCount) ||
                other.listedCount == listedCount) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mediaCount, mediaCount) ||
                other.mediaCount == mediaCount) &&
            (identical(other.muting, muting) || other.muting == muting) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.normalFollowersCount, normalFollowersCount) ||
                other.normalFollowersCount == normalFollowersCount) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            const DeepCollectionEquality()
                .equals(other._pinnedTweetIdsStr, _pinnedTweetIdsStr) &&
            const DeepCollectionEquality()
                .equals(other._withheldInCountries, _withheldInCountries) &&
            const DeepCollectionEquality().equals(
                other.profileBannerExtensions, profileBannerExtensions) &&
            (identical(other.profileBannerUrl, profileBannerUrl) ||
                other.profileBannerUrl == profileBannerUrl) &&
            const DeepCollectionEquality()
                .equals(other.profileImageExtensions, profileImageExtensions) &&
            (identical(other.profileImageUrlHttps, profileImageUrlHttps) ||
                other.profileImageUrlHttps == profileImageUrlHttps) &&
            (identical(
                    other.profileInterstitialType, profileInterstitialType) ||
                other.profileInterstitialType == profileInterstitialType) &&
            (identical(other.protected, protected) ||
                other.protected == protected) &&
            (identical(other.screenName, screenName) ||
                other.screenName == screenName) &&
            (identical(other.statusesCount, statusesCount) ||
                other.statusesCount == statusesCount) &&
            (identical(other.translatorType, translatorType) ||
                other.translatorType == translatorType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.verifiedType, verifiedType) ||
                other.verifiedType == verifiedType) &&
            (identical(other.wantRetweets, wantRetweets) ||
                other.wantRetweets == wantRetweets) &&
            (identical(other.possiblySensitive, possiblySensitive) ||
                other.possiblySensitive == possiblySensitive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        following,
        blocking,
        canDm,
        canMediaTag,
        createdAt,
        defaultProfile,
        defaultProfileImage,
        description,
        const DeepCollectionEquality().hash(entities),
        fastFollowersCount,
        favouritesCount,
        followRequestSent,
        followedBy,
        followersCount,
        blockedBy,
        friendsCount,
        hasCustomTimelines,
        isTranslator,
        listedCount,
        location,
        mediaCount,
        muting,
        name,
        normalFollowersCount,
        notifications,
        const DeepCollectionEquality().hash(_pinnedTweetIdsStr),
        const DeepCollectionEquality().hash(_withheldInCountries),
        const DeepCollectionEquality().hash(profileBannerExtensions),
        profileBannerUrl,
        const DeepCollectionEquality().hash(profileImageExtensions),
        profileImageUrlHttps,
        profileInterstitialType,
        protected,
        screenName,
        statusesCount,
        translatorType,
        url,
        verified,
        verifiedType,
        wantRetweets,
        possiblySensitive
      ]);

  /// Create a copy of UserLegacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLegacyImplCopyWith<_$UserLegacyImpl> get copyWith =>
      __$$UserLegacyImplCopyWithImpl<_$UserLegacyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLegacyImplToJson(
      this,
    );
  }
}

abstract class _UserLegacy implements UserLegacy {
  const factory _UserLegacy(
      {required final bool following,
      required final bool blocking,
      @JsonKey(name: 'can_dm') required final bool canDm,
      @JsonKey(name: 'can_media_tag') required final bool canMediaTag,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'default_profile') required final bool defaultProfile,
      @JsonKey(name: 'default_profile_image')
      required final bool defaultProfileImage,
      required final String description,
      required final dynamic entities,
      @JsonKey(name: 'fast_followers_count')
      required final int fastFollowersCount,
      @JsonKey(name: 'favourites_count') required final int favouritesCount,
      @JsonKey(name: 'follow_request_sent')
      required final bool followRequestSent,
      @JsonKey(name: 'followed_by') required final bool followedBy,
      @JsonKey(name: 'followers_count') required final int followersCount,
      @JsonKey(name: 'blocked_by') required final bool blockedBy,
      @JsonKey(name: 'friends_count') required final int friendsCount,
      @JsonKey(name: 'has_custom_timelines')
      required final bool hasCustomTimelines,
      @JsonKey(name: 'is_translator') required final bool isTranslator,
      @JsonKey(name: 'listed_count') required final int listedCount,
      required final String location,
      @JsonKey(name: 'media_count') required final int mediaCount,
      required final bool muting,
      required final String name,
      @JsonKey(name: 'normal_followers_count')
      required final int normalFollowersCount,
      required final bool notifications,
      @JsonKey(name: 'pinned_tweet_ids_str')
      required final List<String> pinnedTweetIdsStr,
      @JsonKey(name: 'withheld_in_countries')
      required final List<String> withheldInCountries,
      @JsonKey(name: 'profile_banner_extensions')
      required final dynamic profileBannerExtensions,
      @JsonKey(name: 'profile_banner_url')
      required final String profileBannerUrl,
      @JsonKey(name: 'profile_image_extensions')
      required final dynamic profileImageExtensions,
      @JsonKey(name: 'profile_image_url_https')
      required final String profileImageUrlHttps,
      @JsonKey(name: 'profile_interstitial_type')
      required final String profileInterstitialType,
      required final bool protected,
      @JsonKey(name: 'screen_name') required final String screenName,
      @JsonKey(name: 'statuses_count') required final int statusesCount,
      @JsonKey(name: 'translator_type') required final String translatorType,
      required final String url,
      required final bool verified,
      @JsonKey(name: 'verified_type')
      required final UserLegacyVerifiedType verifiedType,
      @JsonKey(name: 'want_retweets') required final bool wantRetweets,
      @JsonKey(name: 'possibly_sensitive')
      required final bool possiblySensitive}) = _$UserLegacyImpl;

  factory _UserLegacy.fromJson(Map<String, dynamic> json) =
      _$UserLegacyImpl.fromJson;

  @override
  bool get following;
  @override
  bool get blocking;
  @override
  @JsonKey(name: 'can_dm')
  bool get canDm;
  @override
  @JsonKey(name: 'can_media_tag')
  bool get canMediaTag;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'default_profile')
  bool get defaultProfile;
  @override
  @JsonKey(name: 'default_profile_image')
  bool get defaultProfileImage;
  @override
  String get description;
  @override
  dynamic get entities;
  @override
  @JsonKey(name: 'fast_followers_count')
  int get fastFollowersCount;
  @override
  @JsonKey(name: 'favourites_count')
  int get favouritesCount;
  @override
  @JsonKey(name: 'follow_request_sent')
  bool get followRequestSent;
  @override
  @JsonKey(name: 'followed_by')
  bool get followedBy;
  @override
  @JsonKey(name: 'followers_count')
  int get followersCount;
  @override
  @JsonKey(name: 'blocked_by')
  bool get blockedBy;
  @override
  @JsonKey(name: 'friends_count')
  int get friendsCount;
  @override
  @JsonKey(name: 'has_custom_timelines')
  bool get hasCustomTimelines;
  @override
  @JsonKey(name: 'is_translator')
  bool get isTranslator;
  @override
  @JsonKey(name: 'listed_count')
  int get listedCount;
  @override
  String get location;
  @override
  @JsonKey(name: 'media_count')
  int get mediaCount;
  @override
  bool get muting;
  @override
  String get name;
  @override
  @JsonKey(name: 'normal_followers_count')
  int get normalFollowersCount;
  @override
  bool get notifications;
  @override
  @JsonKey(name: 'pinned_tweet_ids_str')
  List<String> get pinnedTweetIdsStr;
  @override
  @JsonKey(name: 'withheld_in_countries')
  List<String> get withheldInCountries;
  @override
  @JsonKey(name: 'profile_banner_extensions')
  dynamic get profileBannerExtensions;
  @override
  @JsonKey(name: 'profile_banner_url')
  String get profileBannerUrl;
  @override
  @JsonKey(name: 'profile_image_extensions')
  dynamic get profileImageExtensions;
  @override
  @JsonKey(name: 'profile_image_url_https')
  String get profileImageUrlHttps;
  @override
  @JsonKey(name: 'profile_interstitial_type')
  String get profileInterstitialType;
  @override
  bool get protected;
  @override
  @JsonKey(name: 'screen_name')
  String get screenName;
  @override
  @JsonKey(name: 'statuses_count')
  int get statusesCount;
  @override
  @JsonKey(name: 'translator_type')
  String get translatorType;
  @override
  String get url;
  @override
  bool get verified;
  @override
  @JsonKey(name: 'verified_type')
  UserLegacyVerifiedType get verifiedType;
  @override
  @JsonKey(name: 'want_retweets')
  bool get wantRetweets;
  @override
  @JsonKey(name: 'possibly_sensitive')
  bool get possiblySensitive;

  /// Create a copy of UserLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLegacyImplCopyWith<_$UserLegacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
