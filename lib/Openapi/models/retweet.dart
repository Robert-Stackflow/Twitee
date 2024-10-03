// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'legacy.dart';

part 'retweet.g.dart';

@JsonSerializable()
class Retweet  {
  const Retweet({
    required this.legacy,
    required this.restId,
  });
  
  factory Retweet.fromJson(Map<String, Object?> json) => _$RetweetFromJson(json);
  
  final Legacy legacy;
  @JsonKey(name: 'rest_id')
  final String? restId;

  Map<String, Object?> toJson() => _$RetweetToJson(this);
}
