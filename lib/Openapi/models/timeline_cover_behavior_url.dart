// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline_cover_behavior_url_url_type.dart';

part 'timeline_cover_behavior_url.freezed.dart';
part 'timeline_cover_behavior_url.g.dart';

@Freezed()
class TimelineCoverBehaviorUrl with _$TimelineCoverBehaviorUrl {
  const factory TimelineCoverBehaviorUrl({
    required String url,
    @JsonKey(name: 'url_type')
    required TimelineCoverBehaviorUrlUrlType urlType,
  }) = _TimelineCoverBehaviorUrl;
  
  factory TimelineCoverBehaviorUrl.fromJson(Map<String, Object?> json) => _$TimelineCoverBehaviorUrlFromJson(json);
}
