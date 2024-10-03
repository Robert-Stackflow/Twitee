// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_retweet_response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteRetweetResponseResult _$DeleteRetweetResponseResultFromJson(
        Map<String, dynamic> json) =>
    DeleteRetweetResponseResult(
      retweetResults: json['retweet_results'] == null
          ? null
          : DeleteRetweet.fromJson(
              json['retweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteRetweetResponseResultToJson(
        DeleteRetweetResponseResult instance) =>
    <String, dynamic>{
      'retweet_results': instance.retweetResults,
    };
