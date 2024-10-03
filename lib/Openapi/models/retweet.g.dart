// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Retweet _$RetweetFromJson(Map<String, dynamic> json) => Retweet(
      legacy: Legacy.fromJson(json['legacy'] as Map<String, dynamic>),
      restId: json['rest_id'] as String?,
    );

Map<String, dynamic> _$RetweetToJson(Retweet instance) => <String, dynamic>{
      'legacy': instance.legacy,
      'rest_id': instance.restId,
    };
