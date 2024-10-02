// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile_response_data.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@Freezed()
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required ProfileResponseData data,
  }) = _ProfileResponse;
  
  factory ProfileResponse.fromJson(Map<String, Object?> json) => _$ProfileResponseFromJson(json);
}
