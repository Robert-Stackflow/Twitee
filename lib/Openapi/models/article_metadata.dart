// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_metadata.freezed.dart';
part 'article_metadata.g.dart';

@Freezed()
 class ArticleMetadata with _$ArticleMetadata {
  const factory ArticleMetadata({
    @JsonKey(name: 'first_published_at_secs')
    required int firstPublishedAtSecs,
  }) = _ArticleMetadata;
  
  factory ArticleMetadata.fromJson(Map<String, Object?> json) => _$ArticleMetadataFromJson(json);
}
