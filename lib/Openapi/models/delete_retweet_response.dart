// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'delete_retweet_response_data.dart';

part 'delete_retweet_response.freezed.dart';
part 'delete_retweet_response.g.dart';

@Freezed()
class DeleteRetweetResponse with _$DeleteRetweetResponse {
  const factory DeleteRetweetResponse({
    required DeleteRetweetResponseData data,
  }) = _DeleteRetweetResponse;
  
  factory DeleteRetweetResponse.fromJson(Map<String, Object?> json) => _$DeleteRetweetResponseFromJson(json);
}
