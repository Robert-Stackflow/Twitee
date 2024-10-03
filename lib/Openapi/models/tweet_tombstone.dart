// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_union.dart';
import 'type_name.dart';

part 'tweet_tombstone.g.dart';

@JsonSerializable()
class TweetTombstone extends TweetUnion {
  const TweetTombstone({
    required this.privateTypename,
  });
  
  factory TweetTombstone.fromJson(Map<String, Object?> json) => _$TweetTombstoneFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  Map<String, Object?> toJson() => _$TweetTombstoneToJson(this);
}
