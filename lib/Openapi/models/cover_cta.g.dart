// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_cta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoverCtaImpl _$$CoverCtaImplFromJson(Map<String, dynamic> json) =>
    _$CoverCtaImpl(
      text: json['Text'] as String,
      buttonStyle: CoverCtaButtonStyle.fromJson(json['buttonStyle'] as String),
      callbacks: (json['callbacks'] as List<dynamic>)
          .map((e) => Callback.fromJson(e as Map<String, dynamic>))
          .toList(),
      clientEventInfo: CtaClientEventInfo.fromJson(
          json['clientEventInfo'] as Map<String, dynamic>),
      ctaBehavior: TimelineCoverBehavior.fromJson(
          json['ctaBehavior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoverCtaImplToJson(_$CoverCtaImpl instance) =>
    <String, dynamic>{
      'Text': instance.text,
      'buttonStyle': _$CoverCtaButtonStyleEnumMap[instance.buttonStyle]!,
      'callbacks': instance.callbacks,
      'clientEventInfo': instance.clientEventInfo,
      'ctaBehavior': instance.ctaBehavior,
    };

const _$CoverCtaButtonStyleEnumMap = {
  CoverCtaButtonStyle.primary: 'Primary',
  CoverCtaButtonStyle.$unknown: r'$unknown',
};
