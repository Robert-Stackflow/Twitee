// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'social_context_landing_url_url_type.dart';
import 'urt_endpoint_options.dart';

part 'social_context_landing_url.freezed.dart';
part 'social_context_landing_url.g.dart';

@Freezed()
class SocialContextLandingUrl with _$SocialContextLandingUrl {
  const factory SocialContextLandingUrl({
    required String url,
    required SocialContextLandingUrlUrlType urlType,
    required UrtEndpointOptions urtEndpointOptions,
  }) = _SocialContextLandingUrl;
  
  factory SocialContextLandingUrl.fromJson(Map<String, Object?> json) => _$SocialContextLandingUrlFromJson(json);
}
