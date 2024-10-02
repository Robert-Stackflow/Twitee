// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';
import 'module_item.dart';

part 'timeline_add_to_module.freezed.dart';
part 'timeline_add_to_module.g.dart';

@Freezed()
class TimelineAddToModule with _$TimelineAddToModule {
  const factory TimelineAddToModule({
    required String moduleEntryId,
    required List<ModuleItem> moduleItems,
    required bool prepend,
    required InstructionType type,
  }) = _TimelineAddToModule;
  
  factory TimelineAddToModule.fromJson(Map<String, Object?> json) => _$TimelineAddToModuleFromJson(json);
}
