// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: (json['code'] as num).toInt(),
      extensions:
          ErrorExtensions.fromJson(json['extensions'] as Map<String, dynamic>),
      kind: json['kind'] as String,
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      name: json['name'] as String,
      path: (json['path'] as List<dynamic>).map((e) => e as String).toList(),
      retryAfter: (json['retry_after'] as num?)?.toInt(),
      source: json['source'] as String,
      tracing: Tracing.fromJson(json['tracing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'code': instance.code,
      'extensions': instance.extensions,
      'kind': instance.kind,
      'locations': instance.locations,
      'message': instance.message,
      'name': instance.name,
      'path': instance.path,
      'retry_after': instance.retryAfter,
      'source': instance.source,
      'tracing': instance.tracing,
    };
