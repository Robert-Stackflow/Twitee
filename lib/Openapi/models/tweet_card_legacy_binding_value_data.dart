// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_legacy_binding_value_data_image.dart';
import 'user_value.dart';

part 'tweet_card_legacy_binding_value_data.g.dart';

@JsonSerializable()
class TweetCardLegacyBindingValueData  {
  const TweetCardLegacyBindingValueData({
    required this.booleanValue,
    required this.imageColorValue,
    required this.imageValue,
    required this.scribeKey,
    required this.stringValue,
    required this.type,
    required this.userValue,
  });
  
  factory TweetCardLegacyBindingValueData.fromJson(Map<String, Object?> json) => _$TweetCardLegacyBindingValueDataFromJson(json);
  
  @JsonKey(name: 'boolean_value')
  final bool? booleanValue;
  @JsonKey(name: 'image_color_value')
  final dynamic imageColorValue;
  @JsonKey(name: 'image_value')
  final TweetCardLegacyBindingValueDataImage? imageValue;
  @JsonKey(name: 'scribe_key')
  final String? scribeKey;
  @JsonKey(name: 'string_value')
  final String? stringValue;
  final String type;
  @JsonKey(name: 'user_value')
  final UserValue? userValue;

  Map<String, Object?> toJson() => _$TweetCardLegacyBindingValueDataToJson(this);
}
