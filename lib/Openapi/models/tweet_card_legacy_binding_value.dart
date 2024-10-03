// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_legacy_binding_value_data.dart';

part 'tweet_card_legacy_binding_value.g.dart';

@JsonSerializable()
class TweetCardLegacyBindingValue  {
  const TweetCardLegacyBindingValue({
    required this.key,
    required this.value,
  });
  
  factory TweetCardLegacyBindingValue.fromJson(Map<String, Object?> json) => _$TweetCardLegacyBindingValueFromJson(json);
  
  final String key;
  final TweetCardLegacyBindingValueData value;

  Map<String, Object?> toJson() => _$TweetCardLegacyBindingValueToJson(this);
}
