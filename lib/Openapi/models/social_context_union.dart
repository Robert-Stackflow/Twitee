// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'timeline_general_context.dart';
import 'timeline_topic_context.dart';

abstract class SocialContextUnion {
  const SocialContextUnion();
  factory SocialContextUnion.fromJson(Map<String, Object?> json) {
    switch (json['type']) {
      case "TimelineGeneralContext":
        return TimelineGeneralContext.fromJson(json);
      case "TimelineTopicContext":
        return TimelineTopicContext.fromJson(json);

      default:
        throw ArgumentError('Unknown SocialContextUnion: $json');
    }
  }
  Map<String, Object?> toJson() => {};
}
