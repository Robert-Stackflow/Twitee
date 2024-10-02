// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'delete_retweet.dart';

part 'delete_retweet_response_result.freezed.dart';
part 'delete_retweet_response_result.g.dart';

@Freezed()
class DeleteRetweetResponseResult with _$DeleteRetweetResponseResult {
  const factory DeleteRetweetResponseResult({
    @JsonKey(name: 'retweet_results')
    required DeleteRetweet retweetResults,
  }) = _DeleteRetweetResponseResult;
  
  factory DeleteRetweetResponseResult.fromJson(Map<String, Object?> json) => _$DeleteRetweetResponseResultFromJson(json);
}
