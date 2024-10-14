// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'community_urls_permalink.g.dart';

@JsonSerializable()
class CommunityUrlsPermalink {
  const CommunityUrlsPermalink({
    required this.url,
  });

  factory CommunityUrlsPermalink.fromJson(Map<String, Object?> json) =>
      _$CommunityUrlsPermalinkFromJson(json);

  final String url;

  Map<String, Object?> toJson() => _$CommunityUrlsPermalinkToJson(this);
}
