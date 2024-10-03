// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_card_legacy.dart';

part 'tweet_card.g.dart';

@JsonSerializable()
class TweetCard  {
  const TweetCard({
    required this.legacy,
    required this.restId,
  });
  
  factory TweetCard.fromJson(Map<String, Object?> json) => _$TweetCardFromJson(json);
  
  final TweetCardLegacy? legacy;
  @JsonKey(name: 'rest_id')
  final String? restId;

  Map<String, Object?> toJson() => _$TweetCardToJson(this);
}
