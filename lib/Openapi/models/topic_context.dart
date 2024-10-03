// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'topic_context.g.dart';

@JsonSerializable()
class TopicContext  {
  const TopicContext({
    required this.description,
    required this.following,
    required this.iconUrl,
    required this.id,
    required this.name,
    required this.notInterested,
    required this.topicId,
  });
  
  factory TopicContext.fromJson(Map<String, Object?> json) => _$TopicContextFromJson(json);
  
  final String? description;
  final bool? following;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  final String? id;
  final String? name;
  @JsonKey(name: 'not_interested')
  final bool? notInterested;
  @JsonKey(name: 'topic_id')
  final String? topicId;

  Map<String, Object?> toJson() => _$TopicContextToJson(this);
}
