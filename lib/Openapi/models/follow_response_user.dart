// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'follow_response_result.dart';

part 'follow_response_user.g.dart';

@JsonSerializable()
class FollowResponseUser  {
  const FollowResponseUser({
    required this.result,
  });
  
  factory FollowResponseUser.fromJson(Map<String, Object?> json) => _$FollowResponseUserFromJson(json);
  
  final FollowResponseResult result;

  Map<String, Object?> toJson() => _$FollowResponseUserToJson(this);
}
