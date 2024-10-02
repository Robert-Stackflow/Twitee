// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_result.dart';

part 'media_results.freezed.dart';
part 'media_results.g.dart';

@Freezed()
class MediaResults with _$MediaResults {
  const factory MediaResults({
    required MediaResult result,
  }) = _MediaResults;
  
  factory MediaResults.fromJson(Map<String, Object?> json) => _$MediaResultsFromJson(json);
}
