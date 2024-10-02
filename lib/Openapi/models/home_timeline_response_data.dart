// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_timeline_home.dart';

part 'home_timeline_response_data.freezed.dart';
part 'home_timeline_response_data.g.dart';

@Freezed()
 class HomeTimelineResponseData with _$HomeTimelineResponseData {
  const factory HomeTimelineResponseData({
    required HomeTimelineHome home,
  }) = _HomeTimelineResponseData;
  
  factory HomeTimelineResponseData.fromJson(Map<String, Object?> json) => _$HomeTimelineResponseDataFromJson(json);
}
