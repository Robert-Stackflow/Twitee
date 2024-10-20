// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_cta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverCta _$CoverCtaFromJson(Map<String, dynamic> json) => CoverCta(
      text: json['Text'] != null ? json['Text'] as String : "",
      buttonStyle: json['buttonStyle'] == null
          ? null
          : CoverCtaButtonStyle.fromJson(json['buttonStyle'] as String),
      callbacks: (json['callbacks'] as List<dynamic>)
          .map((e) => Callback.fromJson(e as Map<String, dynamic>))
          .toList(),
      clientEventInfo: CtaClientEventInfo.fromJson(
          json['clientEventInfo'] as Map<String, dynamic>),
      ctaBehavior: TimelineCoverBehavior.fromJson(
          json['ctaBehavior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoverCtaToJson(CoverCta instance) => <String, dynamic>{
      'Text': instance.text,
      'buttonStyle': _$CoverCtaButtonStyleEnumMap[instance.buttonStyle],
      'callbacks': instance.callbacks,
      'clientEventInfo': instance.clientEventInfo,
      'ctaBehavior': instance.ctaBehavior,
    };

const _$CoverCtaButtonStyleEnumMap = {
  CoverCtaButtonStyle.primary: 'Primary',
  CoverCtaButtonStyle.$unknown: r'$unknown',
};
