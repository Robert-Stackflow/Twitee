// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_legacy_binding_value.dart';
import 'tweet_card_platform_data.dart';
import 'user_results.dart';

part 'tweet_card_legacy.g.dart';

@JsonSerializable()
class TweetCardLegacy  {
  const TweetCardLegacy({
    required this.bindingValues,
    required this.cardPlatform,
    required this.name,
    required this.url,
    required this.userRefsResults,
  });
  
  factory TweetCardLegacy.fromJson(Map<String, Object?> json) => _$TweetCardLegacyFromJson(json);
  
  @JsonKey(name: 'binding_values')
  final List<TweetCardLegacyBindingValue?>? bindingValues;
  @JsonKey(name: 'card_platform')
  final TweetCardPlatformData? cardPlatform;
  final String name;
  final String url;
  @JsonKey(name: 'user_refs_results')
  final List<UserResults?>? userRefsResults;

  Map<String, Object?> toJson() => _$TweetCardLegacyToJson(this);
}
