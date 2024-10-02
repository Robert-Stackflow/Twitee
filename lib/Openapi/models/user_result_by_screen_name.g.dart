// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_by_screen_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResultByScreenNameImpl _$$UserResultByScreenNameImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResultByScreenNameImpl(
      id: json['id'] as String,
      result: UserResultByScreenNameResult.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResultByScreenNameImplToJson(
        _$UserResultByScreenNameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
    };
