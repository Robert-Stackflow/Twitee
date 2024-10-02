// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationControlImpl _$$ConversationControlImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationControlImpl(
      mode: ConversationControlMode.fromJson(json['mode'] as String),
    );

Map<String, dynamic> _$$ConversationControlImplToJson(
        _$ConversationControlImpl instance) =>
    <String, dynamic>{
      'mode': _$ConversationControlModeEnumMap[instance.mode]!,
    };

const _$ConversationControlModeEnumMap = {
  ConversationControlMode.community: 'Community',
  ConversationControlMode.verified: 'Verified',
  ConversationControlMode.byInvitation: 'ByInvitation',
  ConversationControlMode.$unknown: r'$unknown',
};
