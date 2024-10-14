// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'birdwatch_entity_ref_type.dart';
import 'birdwatch_entity_ref_url_type.dart';

part 'birdwatch_entity_ref.g.dart';

@JsonSerializable()
class BirdwatchEntityRef {
  const BirdwatchEntityRef({
    required this.text,
    required this.type,
    required this.url,
    required this.urlType,
  });

  factory BirdwatchEntityRef.fromJson(Map<String, Object?> json) =>
      _$BirdwatchEntityRefFromJson(json);

  final String? text;
  final BirdwatchEntityRefType type;
  final String? url;
  final BirdwatchEntityRefUrlType? urlType;

  Map<String, Object?> toJson() => _$BirdwatchEntityRefToJson(this);
}
