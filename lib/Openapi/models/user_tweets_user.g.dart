// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tweets_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTweetsUser _$UserTweetsUserFromJson(Map<String, dynamic> json) =>
    UserTweetsUser(
      result: UserTweetsResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTweetsUserToJson(UserTweetsUser instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
