// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_union.dart';
import 'type_name.dart';

part 'item_result.freezed.dart';
part 'item_result.g.dart';

@Freezed()
class ItemResult with _$ItemResult {
  const factory ItemResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required TweetUnion result,
  }) = _ItemResult;
  
  factory ItemResult.fromJson(Map<String, Object?> json) => _$ItemResultFromJson(json);
}
