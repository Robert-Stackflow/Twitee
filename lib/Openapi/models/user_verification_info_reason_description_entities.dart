// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_verification_info_reason_description_entities_ref.dart';

part 'user_verification_info_reason_description_entities.freezed.dart';
part 'user_verification_info_reason_description_entities.g.dart';

@Freezed()
 class UserVerificationInfoReasonDescriptionEntities with _$UserVerificationInfoReasonDescriptionEntities {
  const factory UserVerificationInfoReasonDescriptionEntities({
    @JsonKey(name: 'from_index')
    required int fromIndex,
    required UserVerificationInfoReasonDescriptionEntitiesRef ref,
    @JsonKey(name: 'to_index')
    required int toIndex,
  }) = _UserVerificationInfoReasonDescriptionEntities;
  
  factory UserVerificationInfoReasonDescriptionEntities.fromJson(Map<String, Object?> json) => _$UserVerificationInfoReasonDescriptionEntitiesFromJson(json);
}
