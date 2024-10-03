// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'follow_response_user.dart';

part 'follow_response_data.g.dart';

@JsonSerializable()
class FollowResponseData  {
  const FollowResponseData({
    required this.user,
  });
  
  factory FollowResponseData.fromJson(Map<String, Object?> json) => _$FollowResponseDataFromJson(json);
  
  final FollowResponseUser user;

  Map<String, Object?> toJson() => _$FollowResponseDataToJson(this);
}
