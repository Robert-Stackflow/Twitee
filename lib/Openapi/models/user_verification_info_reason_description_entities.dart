// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_verification_info_reason_description_entities_ref.dart';

part 'user_verification_info_reason_description_entities.g.dart';

@JsonSerializable()
class UserVerificationInfoReasonDescriptionEntities  {
  const UserVerificationInfoReasonDescriptionEntities({
    required this.fromIndex,
    required this.ref,
    required this.toIndex,
  });
  
  factory UserVerificationInfoReasonDescriptionEntities.fromJson(Map<String, Object?> json) => _$UserVerificationInfoReasonDescriptionEntitiesFromJson(json);
  
  @JsonKey(name: 'from_index')
  final int? fromIndex;
  final UserVerificationInfoReasonDescriptionEntitiesRef ref;
  @JsonKey(name: 'to_index')
  final int? toIndex;

  Map<String, Object?> toJson() => _$UserVerificationInfoReasonDescriptionEntitiesToJson(this);
}
