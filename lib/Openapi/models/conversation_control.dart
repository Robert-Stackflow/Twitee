// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'conversation_control_mode.dart';

part 'conversation_control.g.dart';

@JsonSerializable()
class ConversationControl  {
  const ConversationControl({
    required this.mode,
  });
  
  factory ConversationControl.fromJson(Map<String, Object?> json) => _$ConversationControlFromJson(json);
  
  final ConversationControlMode mode;

  Map<String, Object?> toJson() => _$ConversationControlToJson(this);
}
