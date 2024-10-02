// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_bookmark_response_data.dart';

part 'create_bookmark_response.freezed.dart';
part 'create_bookmark_response.g.dart';

@Freezed()
class CreateBookmarkResponse with _$CreateBookmarkResponse {
  const factory CreateBookmarkResponse({
    required CreateBookmarkResponseData data,
  }) = _CreateBookmarkResponse;
  
  factory CreateBookmarkResponse.fromJson(Map<String, Object?> json) => _$CreateBookmarkResponseFromJson(json);
}
