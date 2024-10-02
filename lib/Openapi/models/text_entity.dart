// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_entity_ref.dart';

part 'text_entity.freezed.dart';
part 'text_entity.g.dart';

@Freezed()
class TextEntity with _$TextEntity {
  const factory TextEntity({
    required int fromIndex,
    required TextEntityRef ref,
    required int toIndex,
  }) = _TextEntity;
  
  factory TextEntity.fromJson(Map<String, Object?> json) => _$TextEntityFromJson(json);
}
