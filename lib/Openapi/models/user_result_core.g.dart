// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResultCore _$UserResultCoreFromJson(Map<String, dynamic> json) =>
    UserResultCore(
      userResults: json['user_results'] == null
          ? null
          : UserResults.fromJson(json['user_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResultCoreToJson(UserResultCore instance) =>
    <String, dynamic>{
      'user_results': instance.userResults,
    };
