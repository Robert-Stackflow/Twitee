// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_result_by_screen_name_result.dart';

part 'user_result_by_screen_name.g.dart';

@JsonSerializable()
class UserResultByScreenName  {
  const UserResultByScreenName({
    required this.id,
    required this.result,
  });
  
  factory UserResultByScreenName.fromJson(Map<String, Object?> json) => _$UserResultByScreenNameFromJson(json);
  
  final String id;
  final UserResultByScreenNameResult result;

  Map<String, Object?> toJson() => _$UserResultByScreenNameToJson(this);
}
