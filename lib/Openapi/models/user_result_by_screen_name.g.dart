// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_by_screen_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResultByScreenName _$UserResultByScreenNameFromJson(
        Map<String, dynamic> json) =>
    UserResultByScreenName(
      id: json['id'] as String,
      result: UserResultByScreenNameResult.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResultByScreenNameToJson(
        UserResultByScreenName instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
    };
