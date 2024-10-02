// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_context_landing_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialContextLandingUrlImpl _$$SocialContextLandingUrlImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialContextLandingUrlImpl(
      url: json['url'] as String,
      urlType:
          SocialContextLandingUrlUrlType.fromJson(json['urlType'] as String),
      urtEndpointOptions: UrtEndpointOptions.fromJson(
          json['urtEndpointOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocialContextLandingUrlImplToJson(
        _$SocialContextLandingUrlImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'urlType': _$SocialContextLandingUrlUrlTypeEnumMap[instance.urlType]!,
      'urtEndpointOptions': instance.urtEndpointOptions,
    };

const _$SocialContextLandingUrlUrlTypeEnumMap = {
  SocialContextLandingUrlUrlType.deepLink: 'DeepLink',
  SocialContextLandingUrlUrlType.urtEndpoint: 'UrtEndpoint',
  SocialContextLandingUrlUrlType.externalUrl: 'ExternalUrl',
  SocialContextLandingUrlUrlType.$unknown: r'$unknown',
};
