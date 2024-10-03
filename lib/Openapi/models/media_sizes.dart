// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_size.dart';

part 'media_sizes.g.dart';

@JsonSerializable()
class MediaSizes  {
  const MediaSizes({
    required this.large,
    required this.medium,
    required this.small,
    required this.thumb,
  });
  
  factory MediaSizes.fromJson(Map<String, Object?> json) => _$MediaSizesFromJson(json);
  
  final MediaSize large;
  final MediaSize medium;
  final MediaSize small;
  final MediaSize thumb;

  Map<String, Object?> toJson() => _$MediaSizesToJson(this);
}
