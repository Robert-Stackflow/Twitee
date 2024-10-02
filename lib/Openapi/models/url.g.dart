// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrlImpl _$$UrlImplFromJson(Map<String, dynamic> json) => _$UrlImpl(
      displayUrl: json['display_url'] as String,
      expandedUrl: json['expanded_url'] as String,
      indices: (json['indices'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UrlImplToJson(_$UrlImpl instance) => <String, dynamic>{
      'display_url': instance.displayUrl,
      'expanded_url': instance.expandedUrl,
      'indices': instance.indices,
      'url': instance.url,
    };
