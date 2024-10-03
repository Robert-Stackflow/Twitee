// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_topic_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineTopicContext _$TimelineTopicContextFromJson(
        Map<String, dynamic> json) =>
    TimelineTopicContext(
      functionalityType: json['functionalityType'] == null
          ? null
          : TimelineTopicContextFunctionalityType.fromJson(
              json['functionalityType'] as String),
      topic: json['topic'] == null
          ? null
          : TopicContext.fromJson(json['topic'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : SocialContextUnionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelineTopicContextToJson(
        TimelineTopicContext instance) =>
    <String, dynamic>{
      'functionalityType': _$TimelineTopicContextFunctionalityTypeEnumMap[
          instance.functionalityType],
      'topic': instance.topic,
      'type': _$SocialContextUnionTypeEnumMap[instance.type],
    };

const _$TimelineTopicContextFunctionalityTypeEnumMap = {
  TimelineTopicContextFunctionalityType.basic: 'Basic',
  TimelineTopicContextFunctionalityType.$unknown: r'$unknown',
};

const _$SocialContextUnionTypeEnumMap = {
  SocialContextUnionType.timelineGeneralContext: 'TimelineGeneralContext',
  SocialContextUnionType.timelineTopicContext: 'TimelineTopicContext',
  SocialContextUnionType.$unknown: r'$unknown',
};
