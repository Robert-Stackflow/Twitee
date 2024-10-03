// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_results.dart';

part 'user_response_data.g.dart';

@JsonSerializable()
class UserResponseData  {
  const UserResponseData({
    required this.user,
  });
  
  factory UserResponseData.fromJson(Map<String, Object?> json) => _$UserResponseDataFromJson(json);
  
  final UserResults user;

  Map<String, Object?> toJson() => _$UserResponseDataToJson(this);
}
