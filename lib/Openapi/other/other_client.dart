// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/other_response.dart';

part 'other_client.g.dart';

@RestApi()
abstract class OtherClient {
  factory OtherClient(Dio dio, {String? baseUrl}) = _OtherClient;

  /// This is not an actual endpoint
  @GET('/other')
  Future<OtherResponse> other();
}
