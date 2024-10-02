// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_card_legacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetCardLegacyImpl _$$TweetCardLegacyImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetCardLegacyImpl(
      bindingValues: (json['binding_values'] as List<dynamic>)
          .map((e) =>
              TweetCardLegacyBindingValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      cardPlatform: TweetCardPlatformData.fromJson(
          json['card_platform'] as Map<String, dynamic>),
      name: json['name'] as String,
      url: json['url'] as String,
      userRefsResults: (json['user_refs_results'] as List<dynamic>)
          .map((e) => UserResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TweetCardLegacyImplToJson(
        _$TweetCardLegacyImpl instance) =>
    <String, dynamic>{
      'binding_values': instance.bindingValues,
      'card_platform': instance.cardPlatform,
      'name': instance.name,
      'url': instance.url,
      'user_refs_results': instance.userRefsResults,
    };
