// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponseData _$ProfileResponseDataFromJson(Map<String, dynamic> json) =>
    ProfileResponseData(
      userResultByScreenName: json['user_result_by_screen_name'] == null
          ? null
          : UserResultByScreenName.fromJson(
              json['user_result_by_screen_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseDataToJson(
        ProfileResponseData instance) =>
    <String, dynamic>{
      'user_result_by_screen_name': instance.userResultByScreenName,
    };
