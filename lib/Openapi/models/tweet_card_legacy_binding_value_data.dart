// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_card_legacy_binding_value_data_image.dart';
import 'user_value.dart';

part 'tweet_card_legacy_binding_value_data.freezed.dart';
part 'tweet_card_legacy_binding_value_data.g.dart';

@Freezed()
 class TweetCardLegacyBindingValueData with _$TweetCardLegacyBindingValueData {
  const factory TweetCardLegacyBindingValueData({
    @JsonKey(name: 'boolean_value')
    required bool booleanValue,
    @JsonKey(name: 'image_color_value')
    required dynamic imageColorValue,
    @JsonKey(name: 'image_value')
    required TweetCardLegacyBindingValueDataImage imageValue,
    @JsonKey(name: 'scribe_key')
    required String scribeKey,
    @JsonKey(name: 'string_value')
    required String stringValue,
    required String type,
    @JsonKey(name: 'user_value')
    required UserValue userValue,
  }) = _TweetCardLegacyBindingValueData;
  
  factory TweetCardLegacyBindingValueData.fromJson(Map<String, Object?> json) => _$TweetCardLegacyBindingValueDataFromJson(json);
}
