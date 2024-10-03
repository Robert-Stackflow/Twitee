// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_response_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowResponseUser _$FollowResponseUserFromJson(Map<String, dynamic> json) =>
    FollowResponseUser(
      result:
          FollowResponseResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FollowResponseUserToJson(FollowResponseUser instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
