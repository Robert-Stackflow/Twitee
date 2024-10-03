// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'ext_media_availability_status.dart';

part 'ext_media_availability.g.dart';

@JsonSerializable()
class ExtMediaAvailability  {
  const ExtMediaAvailability({
    required this.reason,
    required this.status,
  });
  
  factory ExtMediaAvailability.fromJson(Map<String, Object?> json) => _$ExtMediaAvailabilityFromJson(json);
  
  final String? reason;
  final ExtMediaAvailabilityStatus? status;

  Map<String, Object?> toJson() => _$ExtMediaAvailabilityToJson(this);
}
