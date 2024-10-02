// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ext_media_availability_status.dart';

part 'ext_media_availability.freezed.dart';
part 'ext_media_availability.g.dart';

@Freezed()
class ExtMediaAvailability with _$ExtMediaAvailability {
  const factory ExtMediaAvailability({
    required String reason,
    required ExtMediaAvailabilityStatus status,
  }) = _ExtMediaAvailability;
  
  factory ExtMediaAvailability.fromJson(Map<String, Object?> json) => _$ExtMediaAvailabilityFromJson(json);
}
