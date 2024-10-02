// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_retweet_response_result.dart';

part 'create_retweet_response_data.freezed.dart';
part 'create_retweet_response_data.g.dart';

@Freezed()
 class CreateRetweetResponseData with _$CreateRetweetResponseData {
  const factory CreateRetweetResponseData({
    @JsonKey(name: 'create_retweet')
    required CreateRetweetResponseResult createRetweet,
  }) = _CreateRetweetResponseData;
  
  factory CreateRetweetResponseData.fromJson(Map<String, Object?> json) => _$CreateRetweetResponseDataFromJson(json);
}
