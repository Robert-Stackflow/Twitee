// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_interstitial_text_entity_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetInterstitialTextEntityRef _$TweetInterstitialTextEntityRefFromJson(
        Map<String, dynamic> json) =>
    TweetInterstitialTextEntityRef(
      type: TweetInterstitialTextEntityRefType.fromJson(json['type'] as String),
      url: json['url'] as String,
      urlType: TweetInterstitialTextEntityRefUrlType.fromJson(
          json['urlType'] as String),
    );

Map<String, dynamic> _$TweetInterstitialTextEntityRefToJson(
        TweetInterstitialTextEntityRef instance) =>
    <String, dynamic>{
      'type': _$TweetInterstitialTextEntityRefTypeEnumMap[instance.type]!,
      'url': instance.url,
      'urlType':
          _$TweetInterstitialTextEntityRefUrlTypeEnumMap[instance.urlType]!,
    };

const _$TweetInterstitialTextEntityRefTypeEnumMap = {
  TweetInterstitialTextEntityRefType.timelineUrl: 'TimelineUrl',
  TweetInterstitialTextEntityRefType.$unknown: r'$unknown',
};

const _$TweetInterstitialTextEntityRefUrlTypeEnumMap = {
  TweetInterstitialTextEntityRefUrlType.externalUrl: 'ExternalUrl',
  TweetInterstitialTextEntityRefUrlType.$unknown: r'$unknown',
};
