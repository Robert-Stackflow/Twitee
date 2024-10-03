// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_cover_media_info.dart';

part 'article_cover_media.g.dart';

@JsonSerializable()
class ArticleCoverMedia  {
  const ArticleCoverMedia({
    required this.id,
    required this.mediaId,
    required this.mediaInfo,
    required this.mediaKey,
  });
  
  factory ArticleCoverMedia.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaFromJson(json);
  
  final String id;
  @JsonKey(name: 'media_id')
  final String? mediaId;
  @JsonKey(name: 'media_info')
  final ArticleCoverMediaInfo? mediaInfo;
  @JsonKey(name: 'media_key')
  final String? mediaKey;

  Map<String, Object?> toJson() => _$ArticleCoverMediaToJson(this);
}
