// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'module_entry.dart';

part 'module_item.freezed.dart';
part 'module_item.g.dart';

@Freezed()
class ModuleItem with _$ModuleItem {
  const factory ModuleItem({
    required String entryId,
    required ModuleEntry item,
  }) = _ModuleItem;
  
  factory ModuleItem.fromJson(Map<String, Object?> json) => _$ModuleItemFromJson(json);
}
