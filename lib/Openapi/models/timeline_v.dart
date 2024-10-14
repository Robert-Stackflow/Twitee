// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'timeline_v.g.dart';

@JsonSerializable()
class TimelineV {
  const TimelineV({
    required this.timeline,
  });

  factory TimelineV.fromJson(Map<String, Object?> json) =>
      _$TimelineVFromJson(json);

  final Timeline? timeline;

  Map<String, Object?> toJson() => _$TimelineVToJson(this);
}
