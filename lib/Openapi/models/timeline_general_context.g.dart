// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_general_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineGeneralContext _$TimelineGeneralContextFromJson(
        Map<String, dynamic> json) =>
    TimelineGeneralContext(
      contextType: json['contextType'] == null
          ? null
          : TimelineGeneralContextContextType.fromJson(
              json['contextType'] as String),
      landingUrl: json['landingUrl'] == null
          ? null
          : SocialContextLandingUrl.fromJson(
              json['landingUrl'] as Map<String, dynamic>),
      text: json['text'] as String?,
      type: json['type'] == null
          ? null
          : SocialContextUnionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelineGeneralContextToJson(
        TimelineGeneralContext instance) =>
    <String, dynamic>{
      'contextType':
          _$TimelineGeneralContextContextTypeEnumMap[instance.contextType],
      'landingUrl': instance.landingUrl,
      'text': instance.text,
      'type': _$SocialContextUnionTypeEnumMap[instance.type],
    };

const _$TimelineGeneralContextContextTypeEnumMap = {
  TimelineGeneralContextContextType.follow: 'Follow',
  TimelineGeneralContextContextType.pin: 'Pin',
  TimelineGeneralContextContextType.like: 'Like',
  TimelineGeneralContextContextType.location: 'Location',
  TimelineGeneralContextContextType.sparkle: 'Sparkle',
  TimelineGeneralContextContextType.conversation: 'Conversation',
  TimelineGeneralContextContextType.list: 'List',
  TimelineGeneralContextContextType.$unknown: r'$unknown',
};

const _$SocialContextUnionTypeEnumMap = {
  SocialContextUnionType.timelineGeneralContext: 'TimelineGeneralContext',
  SocialContextUnionType.timelineTopicContext: 'TimelineTopicContext',
  SocialContextUnionType.$unknown: r'$unknown',
};
