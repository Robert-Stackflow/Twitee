// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_union.dart';

part 'quoted_ref_result.g.dart';

@JsonSerializable()
class QuotedRefResult  {
  const QuotedRefResult({
    required this.result,
  });
  
  factory QuotedRefResult.fromJson(Map<String, Object?> json) => _$QuotedRefResultFromJson(json);
  
  final TweetUnion? result;

  Map<String, Object?> toJson() => _$QuotedRefResultToJson(this);
}
