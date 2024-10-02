// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_retweet.dart';

part 'create_retweet_response_result.freezed.dart';
part 'create_retweet_response_result.g.dart';

@Freezed()
 class CreateRetweetResponseResult with _$CreateRetweetResponseResult {
  const factory CreateRetweetResponseResult({
    @JsonKey(name: 'retweet_results')
    required CreateRetweet retweetResults,
  }) = _CreateRetweetResponseResult;
  
  factory CreateRetweetResponseResult.fromJson(Map<String, Object?> json) => _$CreateRetweetResponseResultFromJson(json);
}
