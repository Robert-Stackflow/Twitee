// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'home_timeline_home.dart';

part 'home_timeline_response_data.g.dart';

@JsonSerializable()
class HomeTimelineResponseData {
  const HomeTimelineResponseData({
    required this.home,
  });

  factory HomeTimelineResponseData.fromJson(Map<String, Object?> json) =>
      _$HomeTimelineResponseDataFromJson(json);

  final HomeTimelineHome home;

  Map<String, Object?> toJson() => _$HomeTimelineResponseDataToJson(this);
}
