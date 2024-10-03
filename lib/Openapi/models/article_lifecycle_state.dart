// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'article_lifecycle_state.g.dart';

@JsonSerializable()
class ArticleLifecycleState  {
  const ArticleLifecycleState({
    required this.modifiedAtSecs,
  });
  
  factory ArticleLifecycleState.fromJson(Map<String, Object?> json) => _$ArticleLifecycleStateFromJson(json);
  
  @JsonKey(name: 'modified_at_secs')
  final int? modifiedAtSecs;

  Map<String, Object?> toJson() => _$ArticleLifecycleStateToJson(this);
}
