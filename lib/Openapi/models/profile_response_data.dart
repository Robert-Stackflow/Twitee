// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_result_by_screen_name.dart';

part 'profile_response_data.freezed.dart';
part 'profile_response_data.g.dart';

@Freezed()
class ProfileResponseData with _$ProfileResponseData {
  const factory ProfileResponseData({
    @JsonKey(name: 'user_result_by_screen_name')
    required UserResultByScreenName userResultByScreenName,
  }) = _ProfileResponseData;
  
  factory ProfileResponseData.fromJson(Map<String, Object?> json) => _$ProfileResponseDataFromJson(json);
}
