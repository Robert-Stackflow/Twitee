// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntitiesImpl _$$EntitiesImplFromJson(Map<String, dynamic> json) =>
    _$EntitiesImpl(
      hashtags: json['hashtags'] as List<dynamic>,
      media: (json['media'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      symbols: json['symbols'] as List<dynamic>,
      timestamps: (json['timestamps'] as List<dynamic>)
          .map((e) => Timestamp.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: (json['urls'] as List<dynamic>)
          .map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
      userMentions: json['user_mentions'] as List<dynamic>,
    );

Map<String, dynamic> _$$EntitiesImplToJson(_$EntitiesImpl instance) =>
    <String, dynamic>{
      'hashtags': instance.hashtags,
      'media': instance.media,
      'symbols': instance.symbols,
      'timestamps': instance.timestamps,
      'urls': instance.urls,
      'user_mentions': instance.userMentions,
    };
