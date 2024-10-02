// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_verification_info_reason_description_entities_ref_url_type.dart';

part 'user_verification_info_reason_description_entities_ref.freezed.dart';
part 'user_verification_info_reason_description_entities_ref.g.dart';

@Freezed()
class UserVerificationInfoReasonDescriptionEntitiesRef with _$UserVerificationInfoReasonDescriptionEntitiesRef {
  const factory UserVerificationInfoReasonDescriptionEntitiesRef({
    required String url,
    @JsonKey(name: 'url_type')
    required UserVerificationInfoReasonDescriptionEntitiesRefUrlType urlType,
  }) = _UserVerificationInfoReasonDescriptionEntitiesRef;
  
  factory UserVerificationInfoReasonDescriptionEntitiesRef.fromJson(Map<String, Object?> json) => _$UserVerificationInfoReasonDescriptionEntitiesRefFromJson(json);
}
