// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'post_client.g.dart';

@RestApi()
abstract class PostClient {
  factory PostClient(Dio dio, {String? baseUrl}) = _PostClient;

  /// create Bookmark
  @POST('/graphql/{pathQueryId}/CreateBookmark')
  Future<dynamic> postCreateBookmark({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'aoDbu3RHznuiSkQ9aNM67Q',
  });

  /// create Retweet
  @POST('/graphql/{pathQueryId}/CreateRetweet')
  Future<dynamic> postCreateRetweet({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'ojPdsZsimiJrUGLR1sjUtA',
  });

  /// create Tweet
  @POST('/graphql/{pathQueryId}/CreateTweet')
  Future<dynamic> postCreateTweet({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'xT36w0XM3A8jDynpkram2A',
  });

  /// delete Bookmark
  @POST('/graphql/{pathQueryId}/DeleteBookmark')
  Future<dynamic> postDeleteBookmark({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'Wlmlj2-xzyS1GN3a6cj-mQ',
  });

  /// delete Retweet
  @POST('/graphql/{pathQueryId}/DeleteRetweet')
  Future<dynamic> postDeleteRetweet({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'iQtK4dl5hBmXewYZuEOKVw',
  });

  /// delete Retweet
  @POST('/graphql/{pathQueryId}/DeleteTweet')
  Future<dynamic> postDeleteTweet({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'VaenaVgh5q5ih7kvyVjgtg',
  });

  /// favorite Tweet
  @POST('/graphql/{pathQueryId}/FavoriteTweet')
  Future<dynamic> postFavoriteTweet({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'lI07N6Otwv1PhnEgXILM7A',
  });

  /// unfavorite Tweet
  @POST('/graphql/{pathQueryId}/UnfavoriteTweet')
  Future<dynamic> postUnfavoriteTweet({
    @Body() required dynamic body,
    @Path('pathQueryId') String pathQueryId = 'ZYKSe-w7KEslx3JhSIk5LA',
  });
}
