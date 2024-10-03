// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleItem _$ModuleItemFromJson(Map<String, dynamic> json) => ModuleItem(
      entryId: json['entryId'] as String,
      item: ModuleEntry.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModuleItemToJson(ModuleItem instance) =>
    <String, dynamic>{
      'entryId': instance.entryId,
      'item': instance.item,
    };
