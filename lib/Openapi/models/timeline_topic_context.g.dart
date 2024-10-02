// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_topic_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineTopicContextImpl _$$TimelineTopicContextImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineTopicContextImpl(
      functionalityType: TimelineTopicContextFunctionalityType.fromJson(
          json['functionalityType'] as String),
      topic: TopicContext.fromJson(json['topic'] as Map<String, dynamic>),
      type: SocialContextUnionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$TimelineTopicContextImplToJson(
        _$TimelineTopicContextImpl instance) =>
    <String, dynamic>{
      'functionalityType': _$TimelineTopicContextFunctionalityTypeEnumMap[
          instance.functionalityType]!,
      'topic': instance.topic,
      'type': _$SocialContextUnionTypeEnumMap[instance.type]!,
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
