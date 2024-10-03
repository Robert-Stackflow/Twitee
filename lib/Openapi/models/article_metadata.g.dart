// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleMetadata _$ArticleMetadataFromJson(Map<String, dynamic> json) =>
    ArticleMetadata(
      firstPublishedAtSecs: (json['first_published_at_secs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleMetadataToJson(ArticleMetadata instance) =>
    <String, dynamic>{
      'first_published_at_secs': instance.firstPublishedAtSecs,
    };
