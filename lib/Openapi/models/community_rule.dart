// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_rule.freezed.dart';
part 'community_rule.g.dart';

@Freezed()
class CommunityRule with _$CommunityRule {
  const factory CommunityRule({
    required String description,
    required String name,
    @JsonKey(name: 'rest_id')
    required String restId,
  }) = _CommunityRule;
  
  factory CommunityRule.fromJson(Map<String, Object?> json) => _$CommunityRuleFromJson(json);
}
