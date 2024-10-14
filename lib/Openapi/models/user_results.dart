// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_union.dart';

part 'user_results.g.dart';

@JsonSerializable()
class UserResults {
  const UserResults({
    required this.result,
  });

  factory UserResults.fromJson(Map<String, Object?> json) =>
      _$UserResultsFromJson(json);

  final UserUnion? result;

  Map<String, Object?> toJson() => _$UserResultsToJson(this);
}
