// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';
import 'module_item.dart';

part 'timeline_add_to_module.g.dart';

@JsonSerializable()
class TimelineAddToModule extends InstructionUnion {
  const TimelineAddToModule({
    required this.moduleEntryId,
    required this.moduleItems,
    required this.prepend,
    required this.type,
  });
  
  factory TimelineAddToModule.fromJson(Map<String, Object?> json) => _$TimelineAddToModuleFromJson(json);
  
  final String moduleEntryId;
  final List<ModuleItem> moduleItems;
  final bool? prepend;
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelineAddToModuleToJson(this);
}
