// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'timeline_message_prompt.freezed.dart';
part 'timeline_message_prompt.g.dart';

@Freezed()
class TimelineMessagePrompt with _$TimelineMessagePrompt {
  const factory TimelineMessagePrompt({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _TimelineMessagePrompt;
  
  factory TimelineMessagePrompt.fromJson(Map<String, Object?> json) => _$TimelineMessagePromptFromJson(json);
}
