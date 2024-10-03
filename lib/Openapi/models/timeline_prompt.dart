// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'item_content_union.dart';
import 'type_name.dart';

part 'timeline_prompt.g.dart';

@JsonSerializable()
class TimelinePrompt extends ItemContentUnion {
  const TimelinePrompt({
    required this.privateTypename,
  });
  
  factory TimelinePrompt.fromJson(Map<String, Object?> json) => _$TimelinePromptFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  Map<String, Object?> toJson() => _$TimelinePromptToJson(this);
}
