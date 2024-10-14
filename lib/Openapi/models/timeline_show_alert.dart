// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';
import 'rich_text.dart';
import 'timeline_show_alert_alert_type.dart';
import 'timeline_show_alert_display_location.dart';
import 'user_results.dart';

part 'timeline_show_alert.g.dart';

@JsonSerializable()
class TimelineShowAlert extends InstructionUnion {
  const TimelineShowAlert({
    required this.alertType,
    required this.colorConfig,
    required this.displayDurationMs,
    required this.displayLocation,
    required this.iconDisplayInfo,
    required this.richText,
    required this.triggerDelayMs,
    required this.type,
    required this.usersResults,
  });

  factory TimelineShowAlert.fromJson(Map<String, Object?> json) =>
      _$TimelineShowAlertFromJson(json);

  final TimelineShowAlertAlertType? alertType;
  final dynamic colorConfig;
  final int? displayDurationMs;
  final TimelineShowAlertDisplayLocation? displayLocation;
  final dynamic iconDisplayInfo;
  final RichText richText;
  final int? triggerDelayMs;
  final InstructionType type;
  final List<UserResults> usersResults;

  Map<String, Object?> toJson() => _$TimelineShowAlertToJson(this);
}
