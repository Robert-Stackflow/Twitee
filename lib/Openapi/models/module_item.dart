// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'module_entry.dart';

part 'module_item.g.dart';

@JsonSerializable()
class ModuleItem  {
  const ModuleItem({
    required this.entryId,
    required this.item,
  });
  
  factory ModuleItem.fromJson(Map<String, Object?> json) => _$ModuleItemFromJson(json);
  
  final String entryId;
  final ModuleEntry item;

  Map<String, Object?> toJson() => _$ModuleItemToJson(this);
}
