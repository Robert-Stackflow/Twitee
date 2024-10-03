// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_retweet.dart';

part 'create_retweet_response_result.g.dart';

@JsonSerializable()
class CreateRetweetResponseResult  {
  const CreateRetweetResponseResult({
    required this.retweetResults,
  });
  
  factory CreateRetweetResponseResult.fromJson(Map<String, Object?> json) => _$CreateRetweetResponseResultFromJson(json);
  
  @JsonKey(name: 'retweet_results')
  final CreateRetweet? retweetResults;

  Map<String, Object?> toJson() => _$CreateRetweetResponseResultToJson(this);
}
