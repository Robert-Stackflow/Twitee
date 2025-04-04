// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'client_client.g.dart';

@RestApi()
abstract class ClientClient {
  factory ClientClient(Dio dio, {String? baseUrl}) = _ClientClient;

  /// get user by screen name
  @GET('/graphql/{pathQueryId}/ProfileSpotlightsQuery')
  Future<dynamic> getProfileSpotlightsQuery({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = '-0XdHI-mrHWBQd8-oLo1aA',
  });

  /// get TweetResultByRestId
  @GET('/graphql/{pathQueryId}/TweetResultByRestId')
  Future<dynamic> getTweetResultByRestId({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Query('fieldToggles') required dynamic fieldToggles,
    @Path('pathQueryId') String pathQueryId = '7xflPyRiUxGVbJd4uWmbfg',
  });
}
