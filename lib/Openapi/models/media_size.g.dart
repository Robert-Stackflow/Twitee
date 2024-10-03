// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaSize _$MediaSizeFromJson(Map<String, dynamic> json) => MediaSize(
      h: (json['h'] as num).toInt(),
      resize: MediaSizeResize.fromJson(json['resize'] as String),
      w: (json['w'] as num).toInt(),
    );

Map<String, dynamic> _$MediaSizeToJson(MediaSize instance) => <String, dynamic>{
      'h': instance.h,
      'resize': _$MediaSizeResizeEnumMap[instance.resize]!,
      'w': instance.w,
    };

const _$MediaSizeResizeEnumMap = {
  MediaSizeResize.crop: 'crop',
  MediaSizeResize.fit: 'fit',
  MediaSizeResize.$unknown: r'$unknown',
};
