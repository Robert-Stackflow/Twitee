// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cover_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleCoverMediaImpl _$$ArticleCoverMediaImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleCoverMediaImpl(
      id: json['id'] as String,
      mediaId: json['media_id'] as String,
      mediaInfo: ArticleCoverMediaInfo.fromJson(
          json['media_info'] as Map<String, dynamic>),
      mediaKey: json['media_key'] as String,
    );

Map<String, dynamic> _$$ArticleCoverMediaImplToJson(
        _$ArticleCoverMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media_id': instance.mediaId,
      'media_info': instance.mediaInfo,
      'media_key': instance.mediaKey,
    };
