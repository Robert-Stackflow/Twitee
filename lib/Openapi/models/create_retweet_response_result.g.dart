// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_retweet_response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRetweetResponseResult _$CreateRetweetResponseResultFromJson(
        Map<String, dynamic> json) =>
    CreateRetweetResponseResult(
      retweetResults: json['retweet_results'] == null
          ? null
          : CreateRetweet.fromJson(
              json['retweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateRetweetResponseResultToJson(
        CreateRetweetResponseResult instance) =>
    <String, dynamic>{
      'retweet_results': instance.retweetResults,
    };
