// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'tweet_client.g.dart';

@RestApi()
abstract class TweetClient {
  factory TweetClient(Dio dio, {String? baseUrl}) = _TweetClient;

  /// get bookmarks
  @GET('/graphql/{pathQueryId}/Bookmarks')
  Future<dynamic> getBookmarks({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'QUjXply7fA7fk05FRyajEg',
  });

  /// get tweet list of timeline
  @GET('/graphql/{pathQueryId}/HomeLatestTimeline')
  Future<dynamic> getHomeLatestTimeline({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'DiTkXJgLqBBxCs7zaYsbtA',
  });

  /// get tweet list of timeline
  @GET('/graphql/{pathQueryId}/HomeTimeline')
  Future<dynamic> getHomeTimeline({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'HJFjzBgCs16TqxewQOeLNg',
  });

  /// get user likes tweets
  @GET('/graphql/{pathQueryId}/Likes')
  Future<dynamic> getLikes({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'aeJWz--kknVBOl7wQ7gh7Q',
  });

  /// get tweet list of timeline
  @GET('/graphql/{pathQueryId}/ListLatestTweetsTimeline')
  Future<dynamic> getListLatestTweetsTimeline({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'Pa45JvqZuKcW1plybfgBlQ',
  });

  /// search tweet list. product:[Top, Latest, People, Photos, Videos]
  @GET('/graphql/{pathQueryId}/SearchTimeline')
  Future<dynamic> getSearchTimeline({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'UN1i3zUiCWa-6r-Uaho4fw',
  });

  /// get TweetDetail
  @GET('/graphql/{pathQueryId}/TweetDetail')
  Future<dynamic> getTweetDetail({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Query('fieldToggles') required dynamic fieldToggles,
    @Path('pathQueryId') String pathQueryId = 'QuBlQ6SxNAQCt6-kBiCXCQ',
  });

  /// get user highlights tweets
  @GET('/graphql/{pathQueryId}/UserHighlightsTweets')
  Future<dynamic> getUserHighlightsTweets({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'Z-XscDcWUuMO5HalgHf57A',
  });

  /// get user media tweets
  @GET('/graphql/{pathQueryId}/UserMedia')
  Future<dynamic> getUserMedia({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'dexO_2tohK86JDudXXG3Yw',
  });

  /// get user tweets
  @GET('/graphql/{pathQueryId}/UserTweets')
  Future<dynamic> getUserTweets({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'E3opETHurmVJflFsUBVuUQ',
  });

  /// get user replies tweets
  @GET('/graphql/{pathQueryId}/UserTweetsAndReplies')
  Future<dynamic> getUserTweetsAndReplies({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'bt4TKuFz4T7Ckk-VvQVSow',
  });
}
