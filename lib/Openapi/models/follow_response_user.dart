// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'follow_response_result.dart';

part 'follow_response_user.freezed.dart';
part 'follow_response_user.g.dart';

@Freezed()
class FollowResponseUser with _$FollowResponseUser {
  const factory FollowResponseUser({
    required FollowResponseResult result,
  }) = _FollowResponseUser;
  
  factory FollowResponseUser.fromJson(Map<String, Object?> json) => _$FollowResponseUserFromJson(json);
}
