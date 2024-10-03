// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'social_context_union.dart';
import 'social_context_union_type.dart';
import 'timeline_topic_context_functionality_type.dart';
import 'topic_context.dart';

part 'timeline_topic_context.g.dart';

@JsonSerializable()
class TimelineTopicContext extends SocialContextUnion {
  const TimelineTopicContext({
    required this.functionalityType,
    required this.topic,
    required this.type,
  });
  
  factory TimelineTopicContext.fromJson(Map<String, Object?> json) => _$TimelineTopicContextFromJson(json);
  
  final TimelineTopicContextFunctionalityType? functionalityType;
  final TopicContext? topic;
  final SocialContextUnionType? type;

  Map<String, Object?> toJson() => _$TimelineTopicContextToJson(this);
}
