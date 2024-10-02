// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_retweet_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRetweetResponseDataImpl _$$CreateRetweetResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRetweetResponseDataImpl(
      createRetweet: CreateRetweetResponseResult.fromJson(
          json['create_retweet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateRetweetResponseDataImplToJson(
        _$CreateRetweetResponseDataImpl instance) =>
    <String, dynamic>{
      'create_retweet': instance.createRetweet,
    };
