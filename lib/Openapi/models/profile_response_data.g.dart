// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseDataImpl _$$ProfileResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseDataImpl(
      userResultByScreenName: UserResultByScreenName.fromJson(
          json['user_result_by_screen_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseDataImplToJson(
        _$ProfileResponseDataImpl instance) =>
    <String, dynamic>{
      'user_result_by_screen_name': instance.userResultByScreenName,
    };
