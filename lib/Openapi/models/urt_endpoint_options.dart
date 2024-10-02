// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'urt_endpoint_request_params.dart';

part 'urt_endpoint_options.freezed.dart';
part 'urt_endpoint_options.g.dart';

@Freezed()
 class UrtEndpointOptions with _$UrtEndpointOptions {
  const factory UrtEndpointOptions({
    required List<UrtEndpointRequestParams> requestParams,
    required String title,
  }) = _UrtEndpointOptions;
  
  factory UrtEndpointOptions.fromJson(Map<String, Object?> json) => _$UrtEndpointOptionsFromJson(json);
}
