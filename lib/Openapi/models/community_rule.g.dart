// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityRule _$CommunityRuleFromJson(Map<String, dynamic> json) =>
    CommunityRule(
      description: json['description'] as String?,
      name: json['name'] as String,
      restId: json['rest_id'] as String?,
    );

Map<String, dynamic> _$CommunityRuleToJson(CommunityRule instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'rest_id': instance.restId,
    };
