// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'urt_endpoint_request_params.dart';

part 'urt_endpoint_options.g.dart';

@JsonSerializable()
class UrtEndpointOptions  {
  const UrtEndpointOptions({
    required this.requestParams,
    required this.title,
  });
  
  factory UrtEndpointOptions.fromJson(Map<String, Object?> json) => _$UrtEndpointOptionsFromJson(json);
  
  final List<UrtEndpointRequestParams> requestParams;
  final String title;

  Map<String, Object?> toJson() => _$UrtEndpointOptionsToJson(this);
}
