// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControl _$ConversationControlFromJson(Map<String, dynamic> json) =>
    ConversationControl(
      mode: ConversationControlMode.fromJson(json['mode'] as String),
    );

Map<String, dynamic> _$ConversationControlToJson(
        ConversationControl instance) =>
    <String, dynamic>{
      'mode': _$ConversationControlModeEnumMap[instance.mode]!,
    };

const _$ConversationControlModeEnumMap = {
  ConversationControlMode.community: 'Community',
  ConversationControlMode.verified: 'Verified',
  ConversationControlMode.byInvitation: 'ByInvitation',
  ConversationControlMode.$unknown: r'$unknown',
};
