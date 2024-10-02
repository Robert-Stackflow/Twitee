// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_retweet_response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteRetweetResponseResultImpl _$$DeleteRetweetResponseResultImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteRetweetResponseResultImpl(
      retweetResults: DeleteRetweet.fromJson(
          json['retweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteRetweetResponseResultImplToJson(
        _$DeleteRetweetResponseResultImpl instance) =>
    <String, dynamic>{
      'retweet_results': instance.retweetResults,
    };
