// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_results.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@Freezed()
 class Article with _$Article {
  const factory Article({
    @JsonKey(name: 'article_results')
    required ArticleResults articleResults,
  }) = _Article;
  
  factory Article.fromJson(Map<String, Object?> json) => _$ArticleFromJson(json);
}
