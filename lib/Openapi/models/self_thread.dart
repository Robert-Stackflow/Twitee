// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'self_thread.g.dart';

@JsonSerializable()
class SelfThread  {
  const SelfThread({
    required this.idStr,
  });
  
  factory SelfThread.fromJson(Map<String, Object?> json) => _$SelfThreadFromJson(json);
  
  @JsonKey(name: 'id_str')
  final String? idStr;

  Map<String, Object?> toJson() => _$SelfThreadToJson(this);
}
