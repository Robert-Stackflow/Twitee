// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_union.dart';

part 'quoted_ref_result.freezed.dart';
part 'quoted_ref_result.g.dart';

@Freezed()
 class QuotedRefResult with _$QuotedRefResult {
  const factory QuotedRefResult({
    required TweetUnion result,
  }) = _QuotedRefResult;
  
  factory QuotedRefResult.fromJson(Map<String, Object?> json) => _$QuotedRefResultFromJson(json);
}
