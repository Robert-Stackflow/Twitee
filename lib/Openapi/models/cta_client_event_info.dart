// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'cta_client_event_info_action.dart';

part 'cta_client_event_info.g.dart';

@JsonSerializable()
class CtaClientEventInfo {
  const CtaClientEventInfo({
    required this.action,
  });

  factory CtaClientEventInfo.fromJson(Map<String, Object?> json) =>
      _$CtaClientEventInfoFromJson(json);

  final CtaClientEventInfoAction action;

  Map<String, Object?> toJson() => _$CtaClientEventInfoToJson(this);
}
