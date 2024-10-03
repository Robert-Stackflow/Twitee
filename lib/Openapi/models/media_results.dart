// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_result.dart';

part 'media_results.g.dart';

@JsonSerializable()
class MediaResults  {
  const MediaResults({
    required this.result,
  });
  
  factory MediaResults.fromJson(Map<String, Object?> json) => _$MediaResultsFromJson(json);
  
  final MediaResult result;

  Map<String, Object?> toJson() => _$MediaResultsToJson(this);
}
