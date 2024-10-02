// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_result.dart';

part 'article_results.freezed.dart';
part 'article_results.g.dart';

@Freezed()
class ArticleResults with _$ArticleResults {
  const factory ArticleResults({
    required ArticleResult result,
  }) = _ArticleResults;
  
  factory ArticleResults.fromJson(Map<String, Object?> json) => _$ArticleResultsFromJson(json);
}
