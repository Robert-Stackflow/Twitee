// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'v20get_client.g.dart';

@RestApi()
abstract class V20getClient {
  factory V20getClient(Dio dio, {String? baseUrl}) = _V20getClient;

  /// get search adaptive
  @GET('/2/search/adaptive.json')
  Future<void> getSearchAdaptive({
    @Query('skip_status') int skipStatus = 1,
    @Query('include_blocking') int includeBlocking = 1,
    @Query('include_blocked_by') int includeBlockedBy = 1,
    @Query('include_followed_by') int includeFollowedBy = 1,
    @Query('include_want_retweets') int includeWantRetweets = 1,
    @Query('include_mute_edge') int includeMuteEdge = 1,
    @Query('include_can_dm') int includeCanDm = 1,
    @Query('include_can_media_tag') int includeCanMediaTag = 1,
    @Query('include_ext_has_nft_avatar') int includeExtHasNftAvatar = 1,
    @Query('include_ext_is_blue_verified') int includeExtIsBlueVerified = 1,
    @Query('include_ext_verified_type') int includeExtVerifiedType = 1,
    @Query('include_ext_profile_image_shape') int includeExtProfileImageShape = 1,
    @Query('include_profile_interstitial_type') int includeProfileInterstitialType = 1,
    @Query('cards_platform') String cardsPlatform = 'Web-12',
    @Query('include_cards') int includeCards = 1,
    @Query('include_ext_alt_text') bool includeExtAltText = true,
    @Query('include_ext_limited_action_results') bool includeExtLimitedActionResults = false,
    @Query('include_quote_count') bool includeQuoteCount = true,
    @Query('include_reply_count') int includeReplyCount = 1,
    @Query('tweet_mode') String tweetMode = 'extended',
    @Query('include_ext_views') bool includeExtViews = true,
    @Query('include_entities') bool includeEntities = true,
    @Query('include_user_entities') bool includeUserEntities = true,
    @Query('include_ext_media_color') bool includeExtMediaColor = true,
    @Query('ext') String ext = 'mediaStats,highlightedLabel,hasNftAvatar,voiceInfo,birdwatchPivot,enrichments,superFollowMetadata,unmentionInfo,editControl,vibe',
    @Query('include_ext_sensitive_media_warning') bool includeExtSensitiveMediaWarning = true,
    @Query('include_ext_trusted_friends_metadata') bool includeExtTrustedFriendsMetadata = true,
    @Query('send_error_codes') bool sendErrorCodes = true,
    @Query('simple_quoted_tweet') bool simpleQuotedTweet = true,
    @Query('q') String q = 'elon musk',
    @Query('query_source') String querySource = 'trend_click',
    @Query('count') int count = 20,
    @Query('requestContext') String requestContext = 'launch',
    @Query('pc') int pc = 1,
    @Query('spelling_corrections') int spellingCorrections = 1,
    @Query('include_ext_edit_control') bool includeExtEditControl = true,
    @Query('include_ext_media_availability') bool includeExtMediaAvailability = true,
  });
}
