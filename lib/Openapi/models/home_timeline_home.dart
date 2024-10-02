// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'home_timeline_home.freezed.dart';
part 'home_timeline_home.g.dart';

@Freezed()
 class HomeTimelineHome with _$HomeTimelineHome {
  const factory HomeTimelineHome({
    @JsonKey(name: 'home_timeline_urt')
    required Timeline homeTimelineUrt,
  }) = _HomeTimelineHome;
  
  factory HomeTimelineHome.fromJson(Map<String, Object?> json) => _$HomeTimelineHomeFromJson(json);
}
