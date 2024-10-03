// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_legacy_binding_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetCardLegacyBindingValue _$TweetCardLegacyBindingValueFromJson(
        Map<String, dynamic> json) =>
    TweetCardLegacyBindingValue(
      key: json['key'] as String,
      value: TweetCardLegacyBindingValueData.fromJson(
          json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetCardLegacyBindingValueToJson(
        TweetCardLegacyBindingValue instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
