// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensitive_media_warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SensitiveMediaWarning _$SensitiveMediaWarningFromJson(
        Map<String, dynamic> json) =>
    SensitiveMediaWarning(
      adultContent: json['adult_content'] as bool?,
      graphicViolence: json['graphic_violence'] as bool?,
      other: json['other'] == null ? false : json['other'] as bool,
    );

Map<String, dynamic> _$SensitiveMediaWarningToJson(
        SensitiveMediaWarning instance) =>
    <String, dynamic>{
      'adult_content': instance.adultContent,
      'graphic_violence': instance.graphicViolence,
      'other': instance.other,
    };
