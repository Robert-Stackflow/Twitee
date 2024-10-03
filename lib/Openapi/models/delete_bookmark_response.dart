// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'delete_bookmark_response_data.dart';

part 'delete_bookmark_response.g.dart';

@JsonSerializable()
class DeleteBookmarkResponse  {
  const DeleteBookmarkResponse({
    required this.data,
  });
  
  factory DeleteBookmarkResponse.fromJson(Map<String, Object?> json) => _$DeleteBookmarkResponseFromJson(json);
  
  final DeleteBookmarkResponseData data;

  Map<String, Object?> toJson() => _$DeleteBookmarkResponseToJson(this);
}
