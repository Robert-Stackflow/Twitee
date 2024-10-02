// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_event_info.freezed.dart';
part 'client_event_info.g.dart';

@Freezed()
class ClientEventInfo with _$ClientEventInfo {
  const factory ClientEventInfo({
    required String component,
    required dynamic details,
    required String element,
  }) = _ClientEventInfo;
  
  factory ClientEventInfo.fromJson(Map<String, Object?> json) => _$ClientEventInfoFromJson(json);
}
