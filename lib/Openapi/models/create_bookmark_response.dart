// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_bookmark_response_data.dart';

part 'create_bookmark_response.g.dart';

@JsonSerializable()
class CreateBookmarkResponse  {
  const CreateBookmarkResponse({
    required this.data,
  });
  
  factory CreateBookmarkResponse.fromJson(Map<String, Object?> json) => _$CreateBookmarkResponseFromJson(json);
  
  final CreateBookmarkResponseData data;

  Map<String, Object?> toJson() => _$CreateBookmarkResponseToJson(this);
}
