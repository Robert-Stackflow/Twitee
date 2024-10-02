// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'conversation_control_mode.dart';

part 'conversation_control.freezed.dart';
part 'conversation_control.g.dart';

@Freezed()
 class ConversationControl with _$ConversationControl {
  const factory ConversationControl({
    required ConversationControlMode mode,
  }) = _ConversationControl;
  
  factory ConversationControl.fromJson(Map<String, Object?> json) => _$ConversationControlFromJson(json);
}
