// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_cover_media_info.dart';

part 'article_cover_media.freezed.dart';
part 'article_cover_media.g.dart';

@Freezed()
class ArticleCoverMedia with _$ArticleCoverMedia {
  const factory ArticleCoverMedia({
    required String id,
    @JsonKey(name: 'media_id')
    required String mediaId,
    @JsonKey(name: 'media_info')
    required ArticleCoverMediaInfo mediaInfo,
    @JsonKey(name: 'media_key')
    required String mediaKey,
  }) = _ArticleCoverMedia;
  
  factory ArticleCoverMedia.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaFromJson(json);
}
