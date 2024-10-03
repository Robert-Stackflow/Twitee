// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason_description_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerificationInfoReasonDescriptionEntities
    _$UserVerificationInfoReasonDescriptionEntitiesFromJson(
            Map<String, dynamic> json) =>
        UserVerificationInfoReasonDescriptionEntities(
          fromIndex: (json['from_index'] as num?)?.toInt(),
          ref: UserVerificationInfoReasonDescriptionEntitiesRef.fromJson(
              json['ref'] as Map<String, dynamic>),
          toIndex: (json['to_index'] as num?)?.toInt(),
        );

Map<String, dynamic> _$UserVerificationInfoReasonDescriptionEntitiesToJson(
        UserVerificationInfoReasonDescriptionEntities instance) =>
    <String, dynamic>{
      'from_index': instance.fromIndex,
      'ref': instance.ref,
      'to_index': instance.toIndex,
    };
