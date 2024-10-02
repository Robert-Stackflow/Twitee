// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_entity_ref_type.dart';
import 'text_entity_ref_url_type.dart';

part 'text_entity_ref.freezed.dart';
part 'text_entity_ref.g.dart';

@Freezed()
class TextEntityRef with _$TextEntityRef {
  const factory TextEntityRef({
    required TextEntityRefType type,
    required String url,
    required TextEntityRefUrlType urlType,
  }) = _TextEntityRef;
  
  factory TextEntityRef.fromJson(Map<String, Object?> json) => _$TextEntityRefFromJson(json);
}
