// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'type_name.dart';
import 'user_result_by_screen_name_legacy.dart';

part 'user_result_by_screen_name_result.g.dart';

@JsonSerializable()
class UserResultByScreenNameResult  {
  const UserResultByScreenNameResult({
    required this.privateTypename,
    required this.id,
    required this.legacy,
    required this.profilemodules,
    required this.restId,
  });
  
  factory UserResultByScreenNameResult.fromJson(Map<String, Object?> json) => _$UserResultByScreenNameResultFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final String id;
  final UserResultByScreenNameLegacy legacy;
  final dynamic profilemodules;
  @JsonKey(name: 'rest_id')
  final String? restId;

  Map<String, Object?> toJson() => _$UserResultByScreenNameResultToJson(this);
}
