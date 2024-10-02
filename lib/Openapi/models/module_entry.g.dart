// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleEntryImpl _$$ModuleEntryImplFromJson(Map<String, dynamic> json) =>
    _$ModuleEntryImpl(
      clientEventInfo: ClientEventInfo.fromJson(
          json['clientEventInfo'] as Map<String, dynamic>),
      feedbackInfo:
          FeedbackInfo.fromJson(json['feedbackInfo'] as Map<String, dynamic>),
      itemContent: ItemContentUnion.fromJson(
          json['itemContent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModuleEntryImplToJson(_$ModuleEntryImpl instance) =>
    <String, dynamic>{
      'clientEventInfo': instance.clientEventInfo,
      'feedbackInfo': instance.feedbackInfo,
      'itemContent': instance.itemContent,
    };
