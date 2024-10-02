// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_size.dart';

part 'media_sizes.freezed.dart';
part 'media_sizes.g.dart';

@Freezed()
 class MediaSizes with _$MediaSizes {
  const factory MediaSizes({
    required MediaSize large,
    required MediaSize medium,
    required MediaSize small,
    required MediaSize thumb,
  }) = _MediaSizes;
  
  factory MediaSizes.fromJson(Map<String, Object?> json) => _$MediaSizesFromJson(json);
}
