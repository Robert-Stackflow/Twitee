// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaSizeImpl _$$MediaSizeImplFromJson(Map<String, dynamic> json) =>
    _$MediaSizeImpl(
      h: (json['h'] as num).toInt(),
      resize: MediaSizeResize.fromJson(json['resize'] as String),
      w: (json['w'] as num).toInt(),
    );

Map<String, dynamic> _$$MediaSizeImplToJson(_$MediaSizeImpl instance) =>
    <String, dynamic>{
      'h': instance.h,
      'resize': _$MediaSizeResizeEnumMap[instance.resize]!,
      'w': instance.w,
    };

const _$MediaSizeResizeEnumMap = {
  MediaSizeResize.crop: 'crop',
  MediaSizeResize.fit: 'fit',
  MediaSizeResize.$unknown: r'$unknown',
};
