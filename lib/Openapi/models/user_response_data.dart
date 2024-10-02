// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_results.dart';

part 'user_response_data.freezed.dart';
part 'user_response_data.g.dart';

@Freezed()
 class UserResponseData with _$UserResponseData {
  const factory UserResponseData({
    required UserResults user,
  }) = _UserResponseData;
  
  factory UserResponseData.fromJson(Map<String, Object?> json) => _$UserResponseDataFromJson(json);
}
