// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_response_data.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@Freezed()
 class UserResponse with _$UserResponse {
  const factory UserResponse({
    required UserResponseData data,
  }) = _UserResponse;
  
  factory UserResponse.fromJson(Map<String, Object?> json) => _$UserResponseFromJson(json);
}
