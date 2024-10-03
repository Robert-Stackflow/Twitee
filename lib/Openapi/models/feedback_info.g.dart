// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedbackInfo _$FeedbackInfoFromJson(Map<String, dynamic> json) => FeedbackInfo(
      feedbackKeys: (json['feedbackKeys'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$FeedbackInfoToJson(FeedbackInfo instance) =>
    <String, dynamic>{
      'feedbackKeys': instance.feedbackKeys,
    };
