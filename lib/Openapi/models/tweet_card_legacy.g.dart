// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_legacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetCardLegacy _$TweetCardLegacyFromJson(Map<String, dynamic> json) =>
    TweetCardLegacy(
      bindingValues: (json['binding_values'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TweetCardLegacyBindingValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      cardPlatform: json['card_platform'] == null
          ? null
          : TweetCardPlatformData.fromJson(
              json['card_platform'] as Map<String, dynamic>),
      name: json['name'] as String,
      url: json['url'] as String,
      userRefsResults: (json['user_refs_results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : UserResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TweetCardLegacyToJson(TweetCardLegacy instance) =>
    <String, dynamic>{
      'binding_values': instance.bindingValues,
      'card_platform': instance.cardPlatform,
      'name': instance.name,
      'url': instance.url,
      'user_refs_results': instance.userRefsResults,
    };
