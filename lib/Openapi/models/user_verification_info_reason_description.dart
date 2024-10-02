// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_verification_info_reason_description_entities.dart';

part 'user_verification_info_reason_description.freezed.dart';
part 'user_verification_info_reason_description.g.dart';

@Freezed()
 class UserVerificationInfoReasonDescription with _$UserVerificationInfoReasonDescription {
  const factory UserVerificationInfoReasonDescription({
    required List<UserVerificationInfoReasonDescriptionEntities> entities,
    required String text,
  }) = _UserVerificationInfoReasonDescription;
  
  factory UserVerificationInfoReasonDescription.fromJson(Map<String, Object?> json) => _$UserVerificationInfoReasonDescriptionFromJson(json);
}
