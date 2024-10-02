// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_retweet_response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRetweetResponseResultImpl _$$CreateRetweetResponseResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRetweetResponseResultImpl(
      retweetResults: CreateRetweet.fromJson(
          json['retweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateRetweetResponseResultImplToJson(
        _$CreateRetweetResponseResultImpl instance) =>
    <String, dynamic>{
      'retweet_results': instance.retweetResults,
    };
