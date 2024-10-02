// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'follow_response_data.dart';

part 'follow_response.freezed.dart';
part 'follow_response.g.dart';

@Freezed()
 class FollowResponse with _$FollowResponse {
  const factory FollowResponse({
    required FollowResponseData data,
  }) = _FollowResponse;
  
  factory FollowResponse.fromJson(Map<String, Object?> json) => _$FollowResponseFromJson(json);
}
