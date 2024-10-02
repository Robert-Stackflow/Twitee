// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_legacy_binding_value_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetCardLegacyBindingValueDataImpl
    _$$TweetCardLegacyBindingValueDataImplFromJson(Map<String, dynamic> json) =>
        _$TweetCardLegacyBindingValueDataImpl(
          booleanValue: json['boolean_value'] as bool,
          imageColorValue: json['image_color_value'],
          imageValue: TweetCardLegacyBindingValueDataImage.fromJson(
              json['image_value'] as Map<String, dynamic>),
          scribeKey: json['scribe_key'] as String,
          stringValue: json['string_value'] as String,
          type: json['type'] as String,
          userValue:
              UserValue.fromJson(json['user_value'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TweetCardLegacyBindingValueDataImplToJson(
        _$TweetCardLegacyBindingValueDataImpl instance) =>
    <String, dynamic>{
      'boolean_value': instance.booleanValue,
      'image_color_value': instance.imageColorValue,
      'image_value': instance.imageValue,
      'scribe_key': instance.scribeKey,
      'string_value': instance.stringValue,
      'type': instance.type,
      'user_value': instance.userValue,
    };
