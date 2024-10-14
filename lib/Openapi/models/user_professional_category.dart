// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_professional_category.g.dart';

@JsonSerializable()
class UserProfessionalCategory {
  const UserProfessionalCategory({
    required this.iconName,
    required this.id,
    required this.name,
  });

  factory UserProfessionalCategory.fromJson(Map<String, Object?> json) =>
      _$UserProfessionalCategoryFromJson(json);

  @JsonKey(name: 'icon_name')
  final String? iconName;
  final int id;
  final String name;

  Map<String, Object?> toJson() => _$UserProfessionalCategoryToJson(this);
}
