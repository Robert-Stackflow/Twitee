// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tweets_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTweetsData _$UserTweetsDataFromJson(Map<String, dynamic> json) =>
    UserTweetsData(
      user: UserTweetsUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTweetsDataToJson(UserTweetsData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
