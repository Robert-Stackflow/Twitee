// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'note_tweet_result_data.dart';

part 'note_tweet_result.g.dart';

@JsonSerializable()
class NoteTweetResult  {
  const NoteTweetResult({
    required this.result,
  });
  
  factory NoteTweetResult.fromJson(Map<String, Object?> json) => _$NoteTweetResultFromJson(json);
  
  final NoteTweetResultData result;

  Map<String, Object?> toJson() => _$NoteTweetResultToJson(this);
}
