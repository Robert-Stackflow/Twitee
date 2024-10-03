// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_union.dart';
import 'type_name.dart';

part 'item_result.g.dart';

@JsonSerializable()
class ItemResult  {
  const ItemResult({
    required this.privateTypename,
    required this.result,
  });
  
  factory ItemResult.fromJson(Map<String, Object?> json) => _$ItemResultFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final TweetUnion? result;

  Map<String, Object?> toJson() => _$ItemResultToJson(this);
}
