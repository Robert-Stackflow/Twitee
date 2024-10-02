// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_original_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaOriginalInfoImpl _$$MediaOriginalInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaOriginalInfoImpl(
      focusRects: (json['focus_rects'] as List<dynamic>)
          .map((e) =>
              MediaOriginalInfoFocusRect.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
    );

Map<String, dynamic> _$$MediaOriginalInfoImplToJson(
        _$MediaOriginalInfoImpl instance) =>
    <String, dynamic>{
      'focus_rects': instance.focusRects,
      'height': instance.height,
      'width': instance.width,
    };
