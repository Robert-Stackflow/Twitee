// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'delete_bookmark_response_data.dart';

part 'delete_bookmark_response.freezed.dart';
part 'delete_bookmark_response.g.dart';

@Freezed()
class DeleteBookmarkResponse with _$DeleteBookmarkResponse {
  const factory DeleteBookmarkResponse({
    required DeleteBookmarkResponseData data,
  }) = _DeleteBookmarkResponse;
  
  factory DeleteBookmarkResponse.fromJson(Map<String, Object?> json) => _$DeleteBookmarkResponseFromJson(json);
}
