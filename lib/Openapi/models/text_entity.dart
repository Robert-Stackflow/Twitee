// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'text_entity_ref.dart';

part 'text_entity.g.dart';

@JsonSerializable()
class TextEntity {
  const TextEntity({
    required this.fromIndex,
    required this.ref,
    required this.toIndex,
  });

  factory TextEntity.fromJson(Map<String, Object?> json) =>
      _$TextEntityFromJson(json);

  final int fromIndex;
  final TextEntityRef ref;
  final int toIndex;

  Map<String, Object?> toJson() => _$TextEntityToJson(this);
}
