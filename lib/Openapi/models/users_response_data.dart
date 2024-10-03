// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_results.dart';

part 'users_response_data.g.dart';

@JsonSerializable()
class UsersResponseData  {
  const UsersResponseData({
    required this.users,
  });
  
  factory UsersResponseData.fromJson(Map<String, Object?> json) => _$UsersResponseDataFromJson(json);
  
  final List<UserResults> users;

  Map<String, Object?> toJson() => _$UsersResponseDataToJson(this);
}
