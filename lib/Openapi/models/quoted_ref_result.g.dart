// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quoted_ref_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuotedRefResult _$QuotedRefResultFromJson(Map<String, dynamic> json) =>
    QuotedRefResult(
      result: json['result'] == null
          ? null
          : TweetUnion.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuotedRefResultToJson(QuotedRefResult instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
