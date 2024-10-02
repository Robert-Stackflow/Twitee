// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'social_context_union_type.dart';
import 'timeline_topic_context_functionality_type.dart';
import 'topic_context.dart';

part 'timeline_topic_context.freezed.dart';
part 'timeline_topic_context.g.dart';

@Freezed()
 class TimelineTopicContext with _$TimelineTopicContext {
  const factory TimelineTopicContext({
    required TimelineTopicContextFunctionalityType functionalityType,
    required TopicContext topic,
    required SocialContextUnionType type,
  }) = _TimelineTopicContext;
  
  factory TimelineTopicContext.fromJson(Map<String, Object?> json) => _$TimelineTopicContextFromJson(json);
}
