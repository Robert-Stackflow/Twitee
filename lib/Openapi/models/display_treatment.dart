// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'display_treatment.g.dart';

@JsonSerializable()
class DisplayTreatment {
  const DisplayTreatment({
    required this.actionText,
  });

  factory DisplayTreatment.fromJson(Map<String, Object?> json) =>
      _$DisplayTreatmentFromJson(json);

  final String actionText;

  Map<String, Object?> toJson() => _$DisplayTreatmentToJson(this);
}
