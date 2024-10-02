// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'follow_response_user.dart';

part 'follow_response_data.freezed.dart';
part 'follow_response_data.g.dart';

@Freezed()
class FollowResponseData with _$FollowResponseData {
  const factory FollowResponseData({
    required FollowResponseUser user,
  }) = _FollowResponseData;
  
  factory FollowResponseData.fromJson(Map<String, Object?> json) => _$FollowResponseDataFromJson(json);
}
