// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_verification_info_reason_description_entities_ref_url_type.dart';

part 'user_verification_info_reason_description_entities_ref.g.dart';

@JsonSerializable()
class UserVerificationInfoReasonDescriptionEntitiesRef  {
  const UserVerificationInfoReasonDescriptionEntitiesRef({
    required this.url,
    required this.urlType,
  });
  
  factory UserVerificationInfoReasonDescriptionEntitiesRef.fromJson(Map<String, Object?> json) => _$UserVerificationInfoReasonDescriptionEntitiesRefFromJson(json);
  
  final String url;
  @JsonKey(name: 'url_type')
  final UserVerificationInfoReasonDescriptionEntitiesRefUrlType? urlType;

  Map<String, Object?> toJson() => _$UserVerificationInfoReasonDescriptionEntitiesRefToJson(this);
}
