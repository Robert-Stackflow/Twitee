// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_professional_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfessionalCategoryImpl _$$UserProfessionalCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfessionalCategoryImpl(
      iconName: json['icon_name'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserProfessionalCategoryImplToJson(
        _$UserProfessionalCategoryImpl instance) =>
    <String, dynamic>{
      'icon_name': instance.iconName,
      'id': instance.id,
      'name': instance.name,
    };
