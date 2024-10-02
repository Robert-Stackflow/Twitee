// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_professional_category.dart';
import 'user_professional_professional_type.dart';

part 'user_professional.freezed.dart';
part 'user_professional.g.dart';

@Freezed()
 class UserProfessional with _$UserProfessional {
  const factory UserProfessional({
    required List<UserProfessionalCategory> category,
    @JsonKey(name: 'professional_type')
    required UserProfessionalProfessionalType professionalType,
    @JsonKey(name: 'rest_id')
    required String restId,
  }) = _UserProfessional;
  
  factory UserProfessional.fromJson(Map<String, Object?> json) => _$UserProfessionalFromJson(json);
}
