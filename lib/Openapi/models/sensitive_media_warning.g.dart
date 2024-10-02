// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensitive_media_warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensitiveMediaWarningImpl _$$SensitiveMediaWarningImplFromJson(
        Map<String, dynamic> json) =>
    _$SensitiveMediaWarningImpl(
      adultContent: json['adult_content'] as bool,
      graphicViolence: json['graphic_violence'] as bool,
      other: json['other'] as bool,
    );

Map<String, dynamic> _$$SensitiveMediaWarningImplToJson(
        _$SensitiveMediaWarningImpl instance) =>
    <String, dynamic>{
      'adult_content': instance.adultContent,
      'graphic_violence': instance.graphicViolence,
      'other': instance.other,
    };
