// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cta_client_event_info_action.dart';

part 'cta_client_event_info.freezed.dart';
part 'cta_client_event_info.g.dart';

@Freezed()
class CtaClientEventInfo with _$CtaClientEventInfo {
  const factory CtaClientEventInfo({
    required CtaClientEventInfoAction action,
  }) = _CtaClientEventInfo;
  
  factory CtaClientEventInfo.fromJson(Map<String, Object?> json) => _$CtaClientEventInfoFromJson(json);
}
