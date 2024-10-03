// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'article_metadata.g.dart';

@JsonSerializable()
class ArticleMetadata  {
  const ArticleMetadata({
    required this.firstPublishedAtSecs,
  });
  
  factory ArticleMetadata.fromJson(Map<String, Object?> json) => _$ArticleMetadataFromJson(json);
  
  @JsonKey(name: 'first_published_at_secs')
  final int? firstPublishedAtSecs;

  Map<String, Object?> toJson() => _$ArticleMetadataToJson(this);
}
