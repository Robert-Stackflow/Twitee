// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetCard _$TweetCardFromJson(Map<String, dynamic> json) => TweetCard(
      legacy: json['legacy'] == null
          ? null
          : TweetCardLegacy.fromJson(json['legacy'] as Map<String, dynamic>),
      restId: json['rest_id'] as String?,
    );

Map<String, dynamic> _$TweetCardToJson(TweetCard instance) => <String, dynamic>{
      'legacy': instance.legacy,
      'rest_id': instance.restId,
    };
