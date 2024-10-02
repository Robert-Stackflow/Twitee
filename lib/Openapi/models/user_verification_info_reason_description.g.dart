// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVerificationInfoReasonDescriptionImpl
    _$$UserVerificationInfoReasonDescriptionImplFromJson(
            Map<String, dynamic> json) =>
        _$UserVerificationInfoReasonDescriptionImpl(
          entities: (json['entities'] as List<dynamic>)
              .map((e) =>
                  UserVerificationInfoReasonDescriptionEntities.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          text: json['text'] as String,
        );

Map<String, dynamic> _$$UserVerificationInfoReasonDescriptionImplToJson(
        _$UserVerificationInfoReasonDescriptionImpl instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
