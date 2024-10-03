// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'community_rule.g.dart';

@JsonSerializable()
class CommunityRule  {
  const CommunityRule({
    required this.description,
    required this.name,
    required this.restId,
  });
  
  factory CommunityRule.fromJson(Map<String, Object?> json) => _$CommunityRuleFromJson(json);
  
  final String? description;
  final String name;
  @JsonKey(name: 'rest_id')
  final String? restId;

  Map<String, Object?> toJson() => _$CommunityRuleToJson(this);
}
