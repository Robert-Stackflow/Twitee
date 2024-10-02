// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackInfoImpl _$$FeedbackInfoImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackInfoImpl(
      feedbackKeys: (json['feedbackKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FeedbackInfoImplToJson(_$FeedbackInfoImpl instance) =>
    <String, dynamic>{
      'feedbackKeys': instance.feedbackKeys,
    };
