// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'bookmarks_response_data.dart';

part 'bookmarks_response.g.dart';

@JsonSerializable()
class BookmarksResponse  {
  const BookmarksResponse({
    required this.data,
  });
  
  factory BookmarksResponse.fromJson(Map<String, Object?> json) => _$BookmarksResponseFromJson(json);
  
  final BookmarksResponseData data;

  Map<String, Object?> toJson() => _$BookmarksResponseToJson(this);
}
