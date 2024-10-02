// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_extensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorExtensionsImpl _$$ErrorExtensionsImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorExtensionsImpl(
      code: (json['code'] as num).toInt(),
      kind: json['kind'] as String,
      name: json['name'] as String,
      retryAfter: (json['retry_after'] as num).toInt(),
      source: json['source'] as String,
      tracing: Tracing.fromJson(json['tracing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorExtensionsImplToJson(
        _$ErrorExtensionsImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'kind': instance.kind,
      'name': instance.name,
      'retry_after': instance.retryAfter,
      'source': instance.source,
      'tracing': instance.tracing,
    };
