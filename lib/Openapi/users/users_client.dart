// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'users_client.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(Dio dio, {String? baseUrl}) = _UsersClient;

  /// get users by rest ids
  @GET('/graphql/{pathQueryId}/UsersByRestIds')
  Future<dynamic> getUsersByRestIds({
    @Query('variables') required dynamic variables,
    @Query('features') required dynamic features,
    @Path('pathQueryId') String pathQueryId = 'GYBpHkmyXjeuX9IeNJmweA',
  });
}
