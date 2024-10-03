// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'home_timeline_response_data.dart';

part 'timeline_response.g.dart';

@JsonSerializable()
class TimelineResponse  {
  const TimelineResponse({
    required this.data,
  });
  
  factory TimelineResponse.fromJson(Map<String, Object?> json) => _$TimelineResponseFromJson(json);
  
  final HomeTimelineResponseData data;

  Map<String, Object?> toJson() => _$TimelineResponseToJson(this);
}
