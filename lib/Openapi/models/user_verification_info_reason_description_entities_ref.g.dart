// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason_description_entities_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVerificationInfoReasonDescriptionEntitiesRefImpl
    _$$UserVerificationInfoReasonDescriptionEntitiesRefImplFromJson(
            Map<String, dynamic> json) =>
        _$UserVerificationInfoReasonDescriptionEntitiesRefImpl(
          url: json['url'] as String,
          urlType:
              UserVerificationInfoReasonDescriptionEntitiesRefUrlType.fromJson(
                  json['url_type'] as String),
        );

Map<String, dynamic>
    _$$UserVerificationInfoReasonDescriptionEntitiesRefImplToJson(
            _$UserVerificationInfoReasonDescriptionEntitiesRefImpl instance) =>
        <String, dynamic>{
          'url': instance.url,
          'url_type':
              _$UserVerificationInfoReasonDescriptionEntitiesRefUrlTypeEnumMap[
                  instance.urlType]!,
        };

const _$UserVerificationInfoReasonDescriptionEntitiesRefUrlTypeEnumMap = {
  UserVerificationInfoReasonDescriptionEntitiesRefUrlType.externalUrl:
      'ExternalUrl',
  UserVerificationInfoReasonDescriptionEntitiesRefUrlType.$unknown: r'$unknown',
};
