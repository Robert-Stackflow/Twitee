// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'delete_retweet.g.dart';

@JsonSerializable()
class DeleteRetweet  {
  const DeleteRetweet({
    required this.result,
  });
  
  factory DeleteRetweet.fromJson(Map<String, Object?> json) => _$DeleteRetweetFromJson(json);
  
  final dynamic result;

  Map<String, Object?> toJson() => _$DeleteRetweetToJson(this);
}
