// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline_cover_behavior_url_url_type.dart';

part 'timeline_cover_behavior_url.g.dart';

@JsonSerializable()
class TimelineCoverBehaviorUrl  {
  const TimelineCoverBehaviorUrl({
    required this.url,
    required this.urlType,
  });
  
  factory TimelineCoverBehaviorUrl.fromJson(Map<String, Object?> json) => _$TimelineCoverBehaviorUrlFromJson(json);
  
  final String url;
  @JsonKey(name: 'url_type')
  final TimelineCoverBehaviorUrlUrlType? urlType;

  Map<String, Object?> toJson() => _$TimelineCoverBehaviorUrlToJson(this);
}
