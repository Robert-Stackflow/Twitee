// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_lifecycle_state.freezed.dart';
part 'article_lifecycle_state.g.dart';

@Freezed()
class ArticleLifecycleState with _$ArticleLifecycleState {
  const factory ArticleLifecycleState({
    @JsonKey(name: 'modified_at_secs')
    required int modifiedAtSecs,
  }) = _ArticleLifecycleState;
  
  factory ArticleLifecycleState.fromJson(Map<String, Object?> json) => _$ArticleLifecycleStateFromJson(json);
}
