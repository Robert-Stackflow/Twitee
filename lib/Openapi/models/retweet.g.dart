// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetweetImpl _$$RetweetImplFromJson(Map<String, dynamic> json) =>
    _$RetweetImpl(
      legacy: Legacy.fromJson(json['legacy'] as Map<String, dynamic>),
      restId: json['rest_id'] as String,
    );

Map<String, dynamic> _$$RetweetImplToJson(_$RetweetImpl instance) =>
    <String, dynamic>{
      'legacy': instance.legacy,
      'rest_id': instance.restId,
    };
