// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'unified_card_card_fetch_state.dart';

part 'unified_card.g.dart';

@JsonSerializable()
class UnifiedCard {
  const UnifiedCard({
    required this.cardFetchState,
  });

  factory UnifiedCard.fromJson(Map<String, Object?> json) =>
      _$UnifiedCardFromJson(json);

  @JsonKey(name: 'card_fetch_state')
  final UnifiedCardCardFetchState? cardFetchState;

  Map<String, Object?> toJson() => _$UnifiedCardToJson(this);
}
