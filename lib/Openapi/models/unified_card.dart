// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'unified_card_card_fetch_state.dart';

part 'unified_card.freezed.dart';
part 'unified_card.g.dart';

@Freezed()
class UnifiedCard with _$UnifiedCard {
  const factory UnifiedCard({
    @JsonKey(name: 'card_fetch_state')
    required UnifiedCardCardFetchState cardFetchState,
  }) = _UnifiedCard;
  
  factory UnifiedCard.fromJson(Map<String, Object?> json) => _$UnifiedCardFromJson(json);
}
