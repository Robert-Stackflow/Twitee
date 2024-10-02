// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'v11post_client.g.dart';

@RestApi()
abstract class V11postClient {
  factory V11postClient(Dio dio, {String? baseUrl}) = _V11postClient;

  /// post create friendships
  @FormUrlEncoded()
  @POST('/1.1/friendships/create.json')
  Future<void> postCreateFriendships({
    @Body() required dynamic body,
  });

  /// post destroy friendships
  @FormUrlEncoded()
  @POST('/1.1/friendships/destroy.json')
  Future<void> postDestroyFriendships({
    @Body() required dynamic body,
  });
}
