// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_verification_info_reason_description_entities.dart';

part 'user_verification_info_reason_description.g.dart';

@JsonSerializable()
class UserVerificationInfoReasonDescription {
  const UserVerificationInfoReasonDescription({
    required this.entities,
    required this.text,
  });

  factory UserVerificationInfoReasonDescription.fromJson(
          Map<String, Object?> json) =>
      _$UserVerificationInfoReasonDescriptionFromJson(json);

  final List<UserVerificationInfoReasonDescriptionEntities> entities;
  final String text;

  Map<String, Object?> toJson() =>
      _$UserVerificationInfoReasonDescriptionToJson(this);
}
