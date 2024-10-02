// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unified_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnifiedCardImpl _$$UnifiedCardImplFromJson(Map<String, dynamic> json) =>
    _$UnifiedCardImpl(
      cardFetchState: UnifiedCardCardFetchState.fromJson(
          json['card_fetch_state'] as String),
    );

Map<String, dynamic> _$$UnifiedCardImplToJson(_$UnifiedCardImpl instance) =>
    <String, dynamic>{
      'card_fetch_state':
          _$UnifiedCardCardFetchStateEnumMap[instance.cardFetchState]!,
    };

const _$UnifiedCardCardFetchStateEnumMap = {
  UnifiedCardCardFetchState.noCard: 'NoCard',
  UnifiedCardCardFetchState.$unknown: r'$unknown',
};
