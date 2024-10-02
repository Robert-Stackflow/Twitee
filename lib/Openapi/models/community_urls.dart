// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'community_urls_permalink.dart';

part 'community_urls.freezed.dart';
part 'community_urls.g.dart';

@Freezed()
class CommunityUrls with _$CommunityUrls {
  const factory CommunityUrls({
    required CommunityUrlsPermalink permalink,
  }) = _CommunityUrls;
  
  factory CommunityUrls.fromJson(Map<String, Object?> json) => _$CommunityUrlsFromJson(json);
}
