// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bookmarks_response_data.dart';

part 'bookmarks_response.freezed.dart';
part 'bookmarks_response.g.dart';

@Freezed()
 class BookmarksResponse with _$BookmarksResponse {
  const factory BookmarksResponse({
    required BookmarksResponseData data,
  }) = _BookmarksResponse;
  
  factory BookmarksResponse.fromJson(Map<String, Object?> json) => _$BookmarksResponseFromJson(json);
}
