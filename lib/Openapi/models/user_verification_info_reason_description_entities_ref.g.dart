// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason_description_entities_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerificationInfoReasonDescriptionEntitiesRef
    _$UserVerificationInfoReasonDescriptionEntitiesRefFromJson(
            Map<String, dynamic> json) =>
        UserVerificationInfoReasonDescriptionEntitiesRef(
          url: json['url'] as String,
          urlType: json['url_type'] == null
              ? null
              : UserVerificationInfoReasonDescriptionEntitiesRefUrlType
                  .fromJson(json['url_type'] as String),
        );

Map<String, dynamic> _$UserVerificationInfoReasonDescriptionEntitiesRefToJson(
        UserVerificationInfoReasonDescriptionEntitiesRef instance) =>
    <String, dynamic>{
      'url': instance.url,
      'url_type':
          _$UserVerificationInfoReasonDescriptionEntitiesRefUrlTypeEnumMap[
              instance.urlType],
    };

const _$UserVerificationInfoReasonDescriptionEntitiesRefUrlTypeEnumMap = {
  UserVerificationInfoReasonDescriptionEntitiesRefUrlType.externalUrl:
      'ExternalUrl',
  UserVerificationInfoReasonDescriptionEntitiesRefUrlType.$unknown: r'$unknown',
};
