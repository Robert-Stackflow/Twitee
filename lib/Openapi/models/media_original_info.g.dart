// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_original_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaOriginalInfo _$MediaOriginalInfoFromJson(Map<String, dynamic> json) =>
    MediaOriginalInfo(
      focusRects: (json['focus_rects'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MediaOriginalInfoFocusRect.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
    );

Map<String, dynamic> _$MediaOriginalInfoToJson(MediaOriginalInfo instance) =>
    <String, dynamic>{
      'focus_rects': instance.focusRects,
      'height': instance.height,
      'width': instance.width,
    };
