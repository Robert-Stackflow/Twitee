// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_result.dart';

part 'article_results.g.dart';

@JsonSerializable()
class ArticleResults  {
  const ArticleResults({
    required this.result,
  });
  
  factory ArticleResults.fromJson(Map<String, Object?> json) => _$ArticleResultsFromJson(json);
  
  final ArticleResult result;

  Map<String, Object?> toJson() => _$ArticleResultsToJson(this);
}
