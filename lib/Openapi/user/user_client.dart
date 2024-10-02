// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String? baseUrl}) = _UserClient;

  /// get user by rest id
  @GET('/graphql/{pathQueryId}/UserByRestId')
  Future<dynamic> getUserByRestId({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'tD8zKvQzwY3kdx5yz6YmOw',
  });

  /// get user by screen name
  @GET('/graphql/{pathQueryId}/UserByScreenName')
  Future<dynamic> getUserByScreenName({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Query('fieldToggles') required dynamic fieldToggles,
    @Path('pathQueryId') String pathQueryId = 'Yka-W8dz7RaEuQNkroPkYw',
  });
}
