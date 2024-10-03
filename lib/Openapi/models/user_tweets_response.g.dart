// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tweets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTweetsResponse _$UserTweetsResponseFromJson(Map<String, dynamic> json) =>
    UserTweetsResponse(
      data: UserTweetsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTweetsResponseToJson(UserTweetsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
