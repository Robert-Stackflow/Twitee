// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_retweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteRetweetResponseDataImpl _$$DeleteRetweetResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteRetweetResponseDataImpl(
      createRetweet: CreateRetweetResponseResult.fromJson(
          json['create_retweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteRetweetResponseDataImplToJson(
        _$DeleteRetweetResponseDataImpl instance) =>
    <String, dynamic>{
      'create_retweet': instance.createRetweet,
    };
