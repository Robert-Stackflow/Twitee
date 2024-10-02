// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urt_endpoint_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrtEndpointOptionsImpl _$$UrtEndpointOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$UrtEndpointOptionsImpl(
      requestParams: (json['requestParams'] as List<dynamic>)
          .map((e) =>
              UrtEndpointRequestParams.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$UrtEndpointOptionsImplToJson(
        _$UrtEndpointOptionsImpl instance) =>
    <String, dynamic>{
      'requestParams': instance.requestParams,
      'title': instance.title,
    };
