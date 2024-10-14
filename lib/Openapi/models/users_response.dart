// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'users_response_data.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  const UsersResponse({
    required this.data,
  });

  factory UsersResponse.fromJson(Map<String, Object?> json) =>
      _$UsersResponseFromJson(json);

  final UsersResponseData data;

  Map<String, Object?> toJson() => _$UsersResponseToJson(this);
}
