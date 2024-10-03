// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResult _$ArticleResultFromJson(Map<String, dynamic> json) =>
    ArticleResult(
      coverMedia: json['cover_media'] == null
          ? null
          : ArticleCoverMedia.fromJson(
              json['cover_media'] as Map<String, dynamic>),
      id: json['id'] as String,
      lifecycleState: json['lifecycle_state'] == null
          ? null
          : ArticleLifecycleState.fromJson(
              json['lifecycle_state'] as Map<String, dynamic>),
      metadata:
          ArticleMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      previewText: json['preview_text'] as String?,
      restId: json['rest_id'] as String?,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ArticleResultToJson(ArticleResult instance) =>
    <String, dynamic>{
      'cover_media': instance.coverMedia,
      'id': instance.id,
      'lifecycle_state': instance.lifecycleState,
      'metadata': instance.metadata,
      'preview_text': instance.previewText,
      'rest_id': instance.restId,
      'title': instance.title,
    };
