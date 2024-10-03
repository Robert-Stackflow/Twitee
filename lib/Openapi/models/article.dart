// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_results.dart';

part 'article.g.dart';

@JsonSerializable()
class Article  {
  const Article({
    required this.articleResults,
  });
  
  factory Article.fromJson(Map<String, Object?> json) => _$ArticleFromJson(json);
  
  @JsonKey(name: 'article_results')
  final ArticleResults? articleResults;

  Map<String, Object?> toJson() => _$ArticleToJson(this);
}
