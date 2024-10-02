// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'users_response_data.dart';

part 'users_response.freezed.dart';
part 'users_response.g.dart';

@Freezed()
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    required UsersResponseData data,
  }) = _UsersResponse;
  
  factory UsersResponse.fromJson(Map<String, Object?> json) => _$UsersResponseFromJson(json);
}
