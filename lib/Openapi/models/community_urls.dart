// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'community_urls_permalink.dart';

part 'community_urls.g.dart';

@JsonSerializable()
class CommunityUrls {
  const CommunityUrls({
    required this.permalink,
  });

  factory CommunityUrls.fromJson(Map<String, Object?> json) =>
      _$CommunityUrlsFromJson(json);

  final CommunityUrlsPermalink permalink;

  Map<String, Object?> toJson() => _$CommunityUrlsToJson(this);
}
