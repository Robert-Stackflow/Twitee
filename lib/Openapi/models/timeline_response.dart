// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_timeline_response_data.dart';

part 'timeline_response.freezed.dart';
part 'timeline_response.g.dart';

@Freezed()
 class TimelineResponse with _$TimelineResponse {
  const factory TimelineResponse({
    required HomeTimelineResponseData data,
  }) = _TimelineResponse;
  
  factory TimelineResponse.fromJson(Map<String, Object?> json) => _$TimelineResponseFromJson(json);
}
