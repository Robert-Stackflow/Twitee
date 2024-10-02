// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_entity.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@Freezed()
class Text with _$Text {
  const factory Text({
    required List<TextEntity> entities,
    required String text,
  }) = _Text;
  
  factory Text.fromJson(Map<String, Object?> json) => _$TextFromJson(json);
}
