// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'urt_endpoint_request_params.g.dart';

@JsonSerializable()
class UrtEndpointRequestParams  {
  const UrtEndpointRequestParams({
    required this.key,
    required this.value,
  });
  
  factory UrtEndpointRequestParams.fromJson(Map<String, Object?> json) => _$UrtEndpointRequestParamsFromJson(json);
  
  final String key;
  final String value;

  Map<String, Object?> toJson() => _$UrtEndpointRequestParamsToJson(this);
}
