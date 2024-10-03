// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_results.dart';

part 'user_result_core.g.dart';

@JsonSerializable()
class UserResultCore  {
  const UserResultCore({
    required this.userResults,
  });
  
  factory UserResultCore.fromJson(Map<String, Object?> json) => _$UserResultCoreFromJson(json);
  
  @JsonKey(name: 'user_results')
  final UserResults? userResults;

  Map<String, Object?> toJson() => _$UserResultCoreToJson(this);
}
