// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_cover_media.dart';
import 'article_lifecycle_state.dart';
import 'article_metadata.dart';

part 'article_result.g.dart';

@JsonSerializable()
class ArticleResult {
  const ArticleResult({
    required this.coverMedia,
    required this.id,
    required this.lifecycleState,
    required this.metadata,
    required this.previewText,
    required this.restId,
    required this.title,
  });

  factory ArticleResult.fromJson(Map<String, Object?> json) =>
      _$ArticleResultFromJson(json);

  @JsonKey(name: 'cover_media')
  final ArticleCoverMedia? coverMedia;
  final String id;
  @JsonKey(name: 'lifecycle_state')
  final ArticleLifecycleState? lifecycleState;
  final ArticleMetadata metadata;
  @JsonKey(name: 'preview_text')
  final String? previewText;
  @JsonKey(name: 'rest_id')
  final String? restId;
  final String title;

  Map<String, Object?> toJson() => _$ArticleResultToJson(this);
}
