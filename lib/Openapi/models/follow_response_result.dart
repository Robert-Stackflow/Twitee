// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'follow_timeline.dart';
import 'type_name.dart';

part 'follow_response_result.g.dart';

@JsonSerializable()
class FollowResponseResult  {
  const FollowResponseResult({
    required this.privateTypename,
    required this.timeline,
  });
  
  factory FollowResponseResult.fromJson(Map<String, Object?> json) => _$FollowResponseResultFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final FollowTimeline timeline;

  Map<String, Object?> toJson() => _$FollowResponseResultToJson(this);
}
