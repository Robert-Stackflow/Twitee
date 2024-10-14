// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'delete_retweet.dart';

part 'delete_retweet_response_result.g.dart';

@JsonSerializable()
class DeleteRetweetResponseResult {
  const DeleteRetweetResponseResult({
    required this.retweetResults,
  });

  factory DeleteRetweetResponseResult.fromJson(Map<String, Object?> json) =>
      _$DeleteRetweetResponseResultFromJson(json);

  @JsonKey(name: 'retweet_results')
  final DeleteRetweet? retweetResults;

  Map<String, Object?> toJson() => _$DeleteRetweetResponseResultToJson(this);
}
