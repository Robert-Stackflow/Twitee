// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_union.dart';
import 'type_name.dart';

part 'tweet_unavailable.g.dart';

@JsonSerializable()
class TweetUnavailable extends TweetUnion {
  const TweetUnavailable({
    required this.privateTypename,
    required this.reason,
  });

  factory TweetUnavailable.fromJson(Map<String, Object?> json) =>
      _$TweetUnavailableFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final String? reason;

  Map<String, Object?> toJson() => _$TweetUnavailableToJson(this);
}
