// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'search_timeline.freezed.dart';
part 'search_timeline.g.dart';

@Freezed()
 class SearchTimeline with _$SearchTimeline {
  const factory SearchTimeline({
    required Timeline timeline,
  }) = _SearchTimeline;
  
  factory SearchTimeline.fromJson(Map<String, Object?> json) => _$SearchTimelineFromJson(json);
}
