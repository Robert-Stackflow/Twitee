// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cta_client_event_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CtaClientEventInfo _$CtaClientEventInfoFromJson(Map<String, dynamic> json) =>
    CtaClientEventInfo(
      action: CtaClientEventInfoAction.fromJson(json['action'] as String),
    );

Map<String, dynamic> _$CtaClientEventInfoToJson(CtaClientEventInfo instance) =>
    <String, dynamic>{
      'action': _$CtaClientEventInfoActionEnumMap[instance.action]!,
    };

const _$CtaClientEventInfoActionEnumMap = {
  CtaClientEventInfoAction.primaryCta: 'primary_cta',
  CtaClientEventInfoAction.$unknown: r'$unknown',
};
