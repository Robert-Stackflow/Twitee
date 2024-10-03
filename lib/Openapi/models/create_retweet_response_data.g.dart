// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_retweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRetweetResponseData _$CreateRetweetResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateRetweetResponseData(
      createRetweet: json['create_retweet'] == null
          ? null
          : CreateRetweetResponseResult.fromJson(
              json['create_retweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateRetweetResponseDataToJson(
        CreateRetweetResponseData instance) =>
    <String, dynamic>{
      'create_retweet': instance.createRetweet,
    };
