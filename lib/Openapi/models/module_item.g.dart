// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleItemImpl _$$ModuleItemImplFromJson(Map<String, dynamic> json) =>
    _$ModuleItemImpl(
      entryId: json['entryId'] as String,
      item: ModuleEntry.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModuleItemImplToJson(_$ModuleItemImpl instance) =>
    <String, dynamic>{
      'entryId': instance.entryId,
      'item': instance.item,
    };
