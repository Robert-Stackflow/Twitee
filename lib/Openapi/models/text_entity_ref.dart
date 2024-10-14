// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'text_entity_ref_type.dart';
import 'text_entity_ref_url_type.dart';

part 'text_entity_ref.g.dart';

@JsonSerializable()
class TextEntityRef {
  const TextEntityRef({
    required this.type,
    required this.url,
    required this.urlType,
  });

  factory TextEntityRef.fromJson(Map<String, Object?> json) =>
      _$TextEntityRefFromJson(json);

  final TextEntityRefType type;
  final String url;
  final TextEntityRefUrlType urlType;

  Map<String, Object?> toJson() => _$TextEntityRefToJson(this);
}
