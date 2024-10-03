// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_sizes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaSizes _$MediaSizesFromJson(Map<String, dynamic> json) => MediaSizes(
      large: MediaSize.fromJson(json['large'] as Map<String, dynamic>),
      medium: MediaSize.fromJson(json['medium'] as Map<String, dynamic>),
      small: MediaSize.fromJson(json['small'] as Map<String, dynamic>),
      thumb: MediaSize.fromJson(json['thumb'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaSizesToJson(MediaSizes instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'thumb': instance.thumb,
    };
