// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_event_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientEventInfo _$ClientEventInfoFromJson(Map<String, dynamic> json) =>
    ClientEventInfo(
      component: json['component'] as String?,
      details: json['details'],
      element: json['element'] as String?,
    );

Map<String, dynamic> _$ClientEventInfoToJson(ClientEventInfo instance) =>
    <String, dynamic>{
      'component': instance.component,
      'details': instance.details,
      'element': instance.element,
    };
