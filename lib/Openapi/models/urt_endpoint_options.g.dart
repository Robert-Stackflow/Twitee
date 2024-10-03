// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urt_endpoint_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UrtEndpointOptions _$UrtEndpointOptionsFromJson(Map<String, dynamic> json) =>
    UrtEndpointOptions(
      requestParams: (json['requestParams'] as List<dynamic>)
          .map((e) =>
              UrtEndpointRequestParams.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$UrtEndpointOptionsToJson(UrtEndpointOptions instance) =>
    <String, dynamic>{
      'requestParams': instance.requestParams,
      'title': instance.title,
    };
