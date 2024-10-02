// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_general_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineGeneralContextImpl _$$TimelineGeneralContextImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineGeneralContextImpl(
      contextType: TimelineGeneralContextContextType.fromJson(
          json['contextType'] as String),
      landingUrl: SocialContextLandingUrl.fromJson(
          json['landingUrl'] as Map<String, dynamic>),
      text: json['text'] as String,
      type: SocialContextUnionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$TimelineGeneralContextImplToJson(
        _$TimelineGeneralContextImpl instance) =>
    <String, dynamic>{
      'contextType':
          _$TimelineGeneralContextContextTypeEnumMap[instance.contextType]!,
      'landingUrl': instance.landingUrl,
      'text': instance.text,
      'type': _$SocialContextUnionTypeEnumMap[instance.type]!,
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
