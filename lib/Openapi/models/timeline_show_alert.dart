// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';
import 'rich_text.dart';
import 'timeline_show_alert_alert_type.dart';
import 'timeline_show_alert_display_location.dart';
import 'user_results.dart';

part 'timeline_show_alert.freezed.dart';
part 'timeline_show_alert.g.dart';

@Freezed()
class TimelineShowAlert with _$TimelineShowAlert {
  const factory TimelineShowAlert({
    required TimelineShowAlertAlertType alertType,
    required dynamic colorConfig,
    required int displayDurationMs,
    required TimelineShowAlertDisplayLocation displayLocation,
    required dynamic iconDisplayInfo,
    required RichText richText,
    required int triggerDelayMs,
    required InstructionType type,
    required List<UserResults> usersResults,
  }) = _TimelineShowAlert;
  
  factory TimelineShowAlert.fromJson(Map<String, Object?> json) => _$TimelineShowAlertFromJson(json);
}
