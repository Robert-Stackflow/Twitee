// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'social_context_landing_url_url_type.dart';
import 'urt_endpoint_options.dart';

part 'social_context_landing_url.g.dart';

@JsonSerializable()
class SocialContextLandingUrl  {
  const SocialContextLandingUrl({
    required this.url,
    required this.urlType,
    required this.urtEndpointOptions,
  });
  
  factory SocialContextLandingUrl.fromJson(Map<String, Object?> json) => _$SocialContextLandingUrlFromJson(json);
  
  final String? url;
  final SocialContextLandingUrlUrlType? urlType;
  final UrtEndpointOptions? urtEndpointOptions;

  Map<String, Object?> toJson() => _$SocialContextLandingUrlToJson(this);
}
