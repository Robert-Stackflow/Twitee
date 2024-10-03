// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'media_result.g.dart';

@JsonSerializable()
class MediaResult  {
  const MediaResult({
    required this.mediaKey,
  });
  
  factory MediaResult.fromJson(Map<String, Object?> json) => _$MediaResultFromJson(json);
  
  @JsonKey(name: 'media_key')
  final String? mediaKey;

  Map<String, Object?> toJson() => _$MediaResultToJson(this);
}
