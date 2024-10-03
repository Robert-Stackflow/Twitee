// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unified_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnifiedCard _$UnifiedCardFromJson(Map<String, dynamic> json) => UnifiedCard(
      cardFetchState: json['card_fetch_state'] == null
          ? null
          : UnifiedCardCardFetchState.fromJson(
              json['card_fetch_state'] as String),
    );

Map<String, dynamic> _$UnifiedCardToJson(UnifiedCard instance) =>
    <String, dynamic>{
      'card_fetch_state':
          _$UnifiedCardCardFetchStateEnumMap[instance.cardFetchState],
    };

const _$UnifiedCardCardFetchStateEnumMap = {
  UnifiedCardCardFetchState.noCard: 'NoCard',
  UnifiedCardCardFetchState.$unknown: r'$unknown',
};
