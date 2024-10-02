// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_context.freezed.dart';
part 'topic_context.g.dart';

@Freezed()
 class TopicContext with _$TopicContext {
  const factory TopicContext({
    required String description,
    required bool following,
    @JsonKey(name: 'icon_url')
    required String iconUrl,
    required String id,
    required String name,
    @JsonKey(name: 'not_interested')
    required bool notInterested,
    @JsonKey(name: 'topic_id')
    required String topicId,
  }) = _TopicContext;
  
  factory TopicContext.fromJson(Map<String, Object?> json) => _$TopicContextFromJson(json);
}
