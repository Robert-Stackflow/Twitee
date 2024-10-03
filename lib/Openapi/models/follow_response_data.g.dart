// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowResponseData _$FollowResponseDataFromJson(Map<String, dynamic> json) =>
    FollowResponseData(
      user: FollowResponseUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FollowResponseDataToJson(FollowResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
