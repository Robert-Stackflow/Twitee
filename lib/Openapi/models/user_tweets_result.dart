// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline_v.dart';
import 'type_name.dart';

part 'user_tweets_result.g.dart';

@JsonSerializable()
class UserTweetsResult {
  const UserTweetsResult({
    required this.privateTypename,
    required this.timelineV2,
    required this.timeline,
  });

  factory UserTweetsResult.fromJson(Map<String, Object?> json) =>
      _$UserTweetsResultFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  @JsonKey(name: 'timeline_v2')
  final TimelineV? timelineV2;
  @JsonKey(name: 'timeline')
  final TimelineV? timeline;

  Map<String, Object?> toJson() => _$UserTweetsResultToJson(this);
}
