// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'v11get_client.g.dart';

@RestApi()
abstract class V11getClient {
  factory V11getClient(Dio dio, {String? baseUrl}) = _V11getClient;

  /// get friends following list
  @GET('/1.1/friends/following/list.json')
  Future<void> getFriendsFollowingList({
    @Query('include_profile_interstitial_type')
    int includeProfileInterstitialType = 1,
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
    @Query('include_ext_profile_image_shape')
    int includeExtProfileImageShape = 1,
    @Query('skip_status') int skipStatus = 1,
    @Query('cursor') int cursor = -1,
    @Query('user_id') String userId = '44196397',
    @Query('count') int count = 3,
    @Query('with_total_count') bool withTotalCount = true,
  });

  /// get search typeahead
  @GET('/1.1/search/typeahead.json')
  Future<void> getSearchTypeahead({
    @Query('include_ext_is_blue_verified') int includeExtIsBlueVerified = 1,
    @Query('include_ext_verified_type') int includeExtVerifiedType = 1,
    @Query('include_ext_profile_image_shape')
    int includeExtProfileImageShape = 1,
    @Query('q') String q = 'test',
    @Query('src') String src = 'search_box',
    @Query('result_type') String resultType = 'events,users,topics',
  });
}
