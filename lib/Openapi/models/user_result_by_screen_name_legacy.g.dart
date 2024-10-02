// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_by_screen_name_legacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResultByScreenNameLegacyImpl _$$UserResultByScreenNameLegacyImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResultByScreenNameLegacyImpl(
      blockedBy: json['blocked_by'] as bool,
      blocking: json['blocking'] as bool,
      followedBy: json['followed_by'] as bool,
      following: json['following'] as bool,
      name: json['name'] as String,
      protected: json['protected'] as bool,
      screenName: json['screen_name'] as String,
    );

Map<String, dynamic> _$$UserResultByScreenNameLegacyImplToJson(
        _$UserResultByScreenNameLegacyImpl instance) =>
    <String, dynamic>{
      'blocked_by': instance.blockedBy,
      'blocking': instance.blocking,
      'followed_by': instance.followedBy,
      'following': instance.following,
      'name': instance.name,
      'protected': instance.protected,
      'screen_name': instance.screenName,
    };
