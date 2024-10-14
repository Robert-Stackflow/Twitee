// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_response_data.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  const UserResponse({
    required this.data,
  });

  factory UserResponse.fromJson(Map<String, Object?> json) =>
      _$UserResponseFromJson(json);

  final UserResponseData data;

  Map<String, Object?> toJson() => _$UserResponseToJson(this);
}
