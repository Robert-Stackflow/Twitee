// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_retweet_response_result.dart';

part 'delete_retweet_response_data.freezed.dart';
part 'delete_retweet_response_data.g.dart';

@Freezed()
 class DeleteRetweetResponseData with _$DeleteRetweetResponseData {
  const factory DeleteRetweetResponseData({
    @JsonKey(name: 'create_retweet')
    required CreateRetweetResponseResult createRetweet,
  }) = _DeleteRetweetResponseData;
  
  factory DeleteRetweetResponseData.fromJson(Map<String, Object?> json) => _$DeleteRetweetResponseDataFromJson(json);
}
