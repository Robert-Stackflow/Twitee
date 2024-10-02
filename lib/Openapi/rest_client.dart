// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'v11get/v11get_client.dart';
import 'v11post/v11post_client.dart';
import 'v20get/v20get_client.dart';
import 'tweet/tweet_client.dart';
import 'post/post_client.dart';
import 'userlist/userlist_client.dart';
import 'client/client_client.dart';
import 'user/user_client.dart';
import 'users/users_client.dart';
import 'other/other_client.dart';

/// Twitter OpenAPI `v0.0.1`.
///
/// Twitter OpenAPI(Swagger) specification.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '0.0.1';

  V11getClient? _v11get;
  V11postClient? _v11post;
  V20getClient? _v20get;
  TweetClient? _tweet;
  PostClient? _post;
  UserlistClient? _userlist;
  ClientClient? _client;
  UserClient? _user;
  UsersClient? _users;
  OtherClient? _other;

  V11getClient get v11get => _v11get ??= V11getClient(_dio, baseUrl: _baseUrl);

  V11postClient get v11post => _v11post ??= V11postClient(_dio, baseUrl: _baseUrl);

  V20getClient get v20get => _v20get ??= V20getClient(_dio, baseUrl: _baseUrl);

  TweetClient get tweet => _tweet ??= TweetClient(_dio, baseUrl: _baseUrl);

  PostClient get post => _post ??= PostClient(_dio, baseUrl: _baseUrl);

  UserlistClient get userlist => _userlist ??= UserlistClient(_dio, baseUrl: _baseUrl);

  ClientClient get client => _client ??= ClientClient(_dio, baseUrl: _baseUrl);

  UserClient get user => _user ??= UserClient(_dio, baseUrl: _baseUrl);

  UsersClient get users => _users ??= UsersClient(_dio, baseUrl: _baseUrl);

  OtherClient get other => _other ??= OtherClient(_dio, baseUrl: _baseUrl);
}
