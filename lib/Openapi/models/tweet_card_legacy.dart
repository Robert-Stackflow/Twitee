// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_card_legacy_binding_value.dart';
import 'tweet_card_platform_data.dart';
import 'user_results.dart';

part 'tweet_card_legacy.freezed.dart';
part 'tweet_card_legacy.g.dart';

@Freezed()
class TweetCardLegacy with _$TweetCardLegacy {
  const factory TweetCardLegacy({
    @JsonKey(name: 'binding_values')
    required List<TweetCardLegacyBindingValue> bindingValues,
    @JsonKey(name: 'card_platform')
    required TweetCardPlatformData cardPlatform,
    required String name,
    required String url,
    @JsonKey(name: 'user_refs_results')
    required List<UserResults> userRefsResults,
  }) = _TweetCardLegacy;
  
  factory TweetCardLegacy.fromJson(Map<String, Object?> json) => _$TweetCardLegacyFromJson(json);
}
