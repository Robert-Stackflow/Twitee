// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerificationInfoReasonDescription
    _$UserVerificationInfoReasonDescriptionFromJson(
            Map<String, dynamic> json) =>
        UserVerificationInfoReasonDescription(
          entities: (json['entities'] as List<dynamic>)
              .map((e) =>
                  UserVerificationInfoReasonDescriptionEntities.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          text: json['text'] as String,
        );

Map<String, dynamic> _$UserVerificationInfoReasonDescriptionToJson(
        UserVerificationInfoReasonDescription instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
