// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_professional_category.dart';
import 'user_professional_professional_type.dart';

part 'user_professional.g.dart';

@JsonSerializable()
class UserProfessional {
  const UserProfessional({
    required this.category,
    required this.professionalType,
    required this.restId,
  });

  factory UserProfessional.fromJson(Map<String, Object?> json) =>
      _$UserProfessionalFromJson(json);

  final List<UserProfessionalCategory> category;
  @JsonKey(name: 'professional_type')
  final UserProfessionalProfessionalType? professionalType;
  @JsonKey(name: 'rest_id')
  final String? restId;

  Map<String, Object?> toJson() => _$UserProfessionalToJson(this);
}
