// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_retweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteRetweetResponseData _$DeleteRetweetResponseDataFromJson(
        Map<String, dynamic> json) =>
    DeleteRetweetResponseData(
      createRetweet: json['create_retweet'] == null
          ? null
          : CreateRetweetResponseResult.fromJson(
              json['create_retweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteRetweetResponseDataToJson(
        DeleteRetweetResponseData instance) =>
    <String, dynamic>{
      'create_retweet': instance.createRetweet,
    };
