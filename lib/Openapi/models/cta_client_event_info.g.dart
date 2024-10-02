// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cta_client_event_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CtaClientEventInfoImpl _$$CtaClientEventInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$CtaClientEventInfoImpl(
      action: CtaClientEventInfoAction.fromJson(json['action'] as String),
    );

Map<String, dynamic> _$$CtaClientEventInfoImplToJson(
        _$CtaClientEventInfoImpl instance) =>
    <String, dynamic>{
      'action': _$CtaClientEventInfoActionEnumMap[instance.action]!,
    };

const _$CtaClientEventInfoActionEnumMap = {
  CtaClientEventInfoAction.primaryCta: 'primary_cta',
  CtaClientEventInfoAction.$unknown: r'$unknown',
};
