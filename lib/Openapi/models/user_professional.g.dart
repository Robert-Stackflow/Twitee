// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_professional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfessional _$UserProfessionalFromJson(Map<String, dynamic> json) =>
    UserProfessional(
      category: (json['category'] as List<dynamic>)
          .map((e) =>
              UserProfessionalCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      professionalType: json['professional_type'] == null
          ? null
          : UserProfessionalProfessionalType.fromJson(
              json['professional_type'] as String),
      restId: json['rest_id'] as String?,
    );

Map<String, dynamic> _$UserProfessionalToJson(UserProfessional instance) =>
    <String, dynamic>{
      'category': instance.category,
      'professional_type':
          _$UserProfessionalProfessionalTypeEnumMap[instance.professionalType],
      'rest_id': instance.restId,
    };

const _$UserProfessionalProfessionalTypeEnumMap = {
  UserProfessionalProfessionalType.business: 'Business',
  UserProfessionalProfessionalType.creator: 'Creator',
  UserProfessionalProfessionalType.$unknown: r'$unknown',
};
