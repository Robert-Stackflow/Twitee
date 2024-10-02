// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'timeline_prompt.freezed.dart';
part 'timeline_prompt.g.dart';

@Freezed()
 class TimelinePrompt with _$TimelinePrompt {
  const factory TimelinePrompt({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _TimelinePrompt;
  
  factory TimelinePrompt.fromJson(Map<String, Object?> json) => _$TimelinePromptFromJson(json);
}
