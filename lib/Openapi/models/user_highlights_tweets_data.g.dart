// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_highlights_tweets_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserHighlightsTweetsData _$UserHighlightsTweetsDataFromJson(
        Map<String, dynamic> json) =>
    UserHighlightsTweetsData(
      user: UserHighlightsTweetsUser.fromJson(
          json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserHighlightsTweetsDataToJson(
        UserHighlightsTweetsData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
