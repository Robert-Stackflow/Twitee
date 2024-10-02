// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_professional_category.freezed.dart';
part 'user_professional_category.g.dart';

@Freezed()
class UserProfessionalCategory with _$UserProfessionalCategory {
  const factory UserProfessionalCategory({
    @JsonKey(name: 'icon_name')
    required String iconName,
    required int id,
    required String name,
  }) = _UserProfessionalCategory;
  
  factory UserProfessionalCategory.fromJson(Map<String, Object?> json) => _$UserProfessionalCategoryFromJson(json);
}
