// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'one_factor_login_eligibility.g.dart';

@JsonSerializable()
class OneFactorLoginEligibility  {
  const OneFactorLoginEligibility({
    required this.fetchStatus,
  });
  
  factory OneFactorLoginEligibility.fromJson(Map<String, Object?> json) => _$OneFactorLoginEligibilityFromJson(json);
  
  final String fetchStatus;

  Map<String, Object?> toJson() => _$OneFactorLoginEligibilityToJson(this);
}
