// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_professional_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfessionalCategory _$UserProfessionalCategoryFromJson(
        Map<String, dynamic> json) =>
    UserProfessionalCategory(
      iconName: json['icon_name'] as String?,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserProfessionalCategoryToJson(
        UserProfessionalCategory instance) =>
    <String, dynamic>{
      'icon_name': instance.iconName,
      'id': instance.id,
      'name': instance.name,
    };
