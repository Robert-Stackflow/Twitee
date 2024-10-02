// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'userlist_client.g.dart';

@RestApi()
abstract class UserlistClient {
  factory UserlistClient(Dio dio, {String? baseUrl}) = _UserlistClient;

  /// get tweet favoriters
  @GET('/graphql/{pathQueryId}/Favoriters')
  Future<dynamic> getFavoriters({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'LLkw5EcVutJL6y-2gkz22A',
  });

  /// get user list of followers
  @GET('/graphql/{pathQueryId}/Followers')
  Future<dynamic> getFollowers({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'OSXFkKmGvfw_6pGgGtkWFg',
  });

  /// get followers you know
  @GET('/graphql/{pathQueryId}/FollowersYouKnow')
  Future<dynamic> getFollowersYouKnow({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = '52sUpz5G7XvESPWgKW9i9Q',
  });

  /// get user list of following
  @GET('/graphql/{pathQueryId}/Following')
  Future<dynamic> getFollowing({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = '7oQrdmth4zE3EtD42ZxgOA',
  });

  /// get tweet retweeters
  @GET('/graphql/{pathQueryId}/Retweeters')
  Future<dynamic> getRetweeters({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = '8019obfgnveiPiJuS2Rtow',
  });
}
