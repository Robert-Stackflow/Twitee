// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'urt_endpoint_request_params.freezed.dart';
part 'urt_endpoint_request_params.g.dart';

@Freezed()
class UrtEndpointRequestParams with _$UrtEndpointRequestParams {
  const factory UrtEndpointRequestParams({
    required String key,
    required String value,
  }) = _UrtEndpointRequestParams;
  
  factory UrtEndpointRequestParams.fromJson(Map<String, Object?> json) => _$UrtEndpointRequestParamsFromJson(json);
}
