// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResults _$UserResultsFromJson(Map<String, dynamic> json) => UserResults(
      result: json['result'] == null
          ? null
          : UserUnion.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResultsToJson(UserResults instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
