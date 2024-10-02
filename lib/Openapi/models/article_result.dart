// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_cover_media.dart';
import 'article_lifecycle_state.dart';
import 'article_metadata.dart';

part 'article_result.freezed.dart';
part 'article_result.g.dart';

@Freezed()
class ArticleResult with _$ArticleResult {
  const factory ArticleResult({
    @JsonKey(name: 'cover_media')
    required ArticleCoverMedia coverMedia,
    required String id,
    @JsonKey(name: 'lifecycle_state')
    required ArticleLifecycleState lifecycleState,
    required ArticleMetadata metadata,
    @JsonKey(name: 'preview_text')
    required String previewText,
    @JsonKey(name: 'rest_id')
    required String restId,
    required String title,
  }) = _ArticleResult;
  
  factory ArticleResult.fromJson(Map<String, Object?> json) => _$ArticleResultFromJson(json);
}
