// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timestamp _$TimestampFromJson(Map<String, dynamic> json) => Timestamp(
      indices: (json['indices'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      seconds: (json['seconds'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$TimestampToJson(Timestamp instance) => <String, dynamic>{
      'indices': instance.indices,
      'seconds': instance.seconds,
      'text': instance.text,
    };
