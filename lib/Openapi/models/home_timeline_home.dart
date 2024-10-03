// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'home_timeline_home.g.dart';

@JsonSerializable()
class HomeTimelineHome  {
  const HomeTimelineHome({
    required this.homeTimelineUrt,
  });
  
  factory HomeTimelineHome.fromJson(Map<String, Object?> json) => _$HomeTimelineHomeFromJson(json);
  
  @JsonKey(name: 'home_timeline_urt')
  final Timeline? homeTimelineUrt;

  Map<String, Object?> toJson() => _$HomeTimelineHomeToJson(this);
}
