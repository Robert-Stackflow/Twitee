// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'client_event_info.g.dart';

@JsonSerializable()
class ClientEventInfo {
  const ClientEventInfo({
    required this.component,
    required this.details,
    required this.element,
  });

  factory ClientEventInfo.fromJson(Map<String, Object?> json) =>
      _$ClientEventInfoFromJson(json);

  final String? component;
  final dynamic details;
  final String? element;

  Map<String, Object?> toJson() => _$ClientEventInfoToJson(this);
}
