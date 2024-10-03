// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entities _$EntitiesFromJson(Map<String, dynamic> json) => Entities(
      hashtags: json['hashtags'] as List<dynamic>,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      symbols: json['symbols'] as List<dynamic>,
      timestamps: (json['timestamps'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Timestamp.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: (json['urls'] as List<dynamic>)
          .map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
      userMentions: json['user_mentions'] as List<dynamic>?,
    );

Map<String, dynamic> _$EntitiesToJson(Entities instance) => <String, dynamic>{
      'hashtags': instance.hashtags,
      'media': instance.media,
      'symbols': instance.symbols,
      'timestamps': instance.timestamps,
      'urls': instance.urls,
      'user_mentions': instance.userMentions,
    };
