// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_context_landing_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialContextLandingUrl _$SocialContextLandingUrlFromJson(
        Map<String, dynamic> json) =>
    SocialContextLandingUrl(
      url: json['url'] as String?,
      urlType: json['urlType'] == null
          ? null
          : SocialContextLandingUrlUrlType.fromJson(json['urlType'] as String),
      urtEndpointOptions: json['urtEndpointOptions'] == null
          ? null
          : UrtEndpointOptions.fromJson(
              json['urtEndpointOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocialContextLandingUrlToJson(
        SocialContextLandingUrl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'urlType': _$SocialContextLandingUrlUrlTypeEnumMap[instance.urlType],
      'urtEndpointOptions': instance.urtEndpointOptions,
    };

const _$SocialContextLandingUrlUrlTypeEnumMap = {
  SocialContextLandingUrlUrlType.deepLink: 'DeepLink',
  SocialContextLandingUrlUrlType.urtEndpoint: 'UrtEndpoint',
  SocialContextLandingUrlUrlType.externalUrl: 'ExternalUrl',
  SocialContextLandingUrlUrlType.$unknown: r'$unknown',
};
