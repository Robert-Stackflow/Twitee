// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleEntry _$ModuleEntryFromJson(Map<String, dynamic> json) => ModuleEntry(
      clientEventInfo: json['clientEventInfo'] == null
          ? null
          : ClientEventInfo.fromJson(
              json['clientEventInfo'] as Map<String, dynamic>),
      feedbackInfo: json['feedbackInfo'] == null
          ? null
          : FeedbackInfo.fromJson(json['feedbackInfo'] as Map<String, dynamic>),
      itemContent: ItemContentUnion.fromJson(
          json['itemContent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModuleEntryToJson(ModuleEntry instance) =>
    <String, dynamic>{
      'clientEventInfo': instance.clientEventInfo,
      'feedbackInfo': instance.feedbackInfo,
      'itemContent': instance.itemContent,
    };
