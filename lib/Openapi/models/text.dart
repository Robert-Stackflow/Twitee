// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'text_entity.dart';

part 'text.g.dart';

@JsonSerializable()
class TextItem  {
  const TextItem({
    required this.entities,
    required this.text,
  });
  
  factory TextItem.fromJson(Map<String, Object?> json) => _$TextFromJson(json);
  
  final List<TextEntity> entities;
  final String text;

  Map<String, Object?> toJson() => _$TextToJson(this);
}
