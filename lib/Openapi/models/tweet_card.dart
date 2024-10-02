// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_card_legacy.dart';

part 'tweet_card.freezed.dart';
part 'tweet_card.g.dart';

@Freezed()
class TweetCard with _$TweetCard {
  const factory TweetCard({
    required TweetCardLegacy legacy,
    @JsonKey(name: 'rest_id')
    required String restId,
  }) = _TweetCard;
  
  factory TweetCard.fromJson(Map<String, Object?> json) => _$TweetCardFromJson(json);
}
