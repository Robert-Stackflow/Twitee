// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_retweet_response_data.dart';

part 'create_retweet_response.freezed.dart';
part 'create_retweet_response.g.dart';

@Freezed()
class CreateRetweetResponse with _$CreateRetweetResponse {
  const factory CreateRetweetResponse({
    required CreateRetweetResponseData data,
  }) = _CreateRetweetResponse;
  
  factory CreateRetweetResponse.fromJson(Map<String, Object?> json) => _$CreateRetweetResponseFromJson(json);
}
