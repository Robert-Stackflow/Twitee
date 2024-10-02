// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_cover_media_color_info.dart';
import 'type_name.dart';

part 'article_cover_media_info.freezed.dart';
part 'article_cover_media_info.g.dart';

@Freezed()
class ArticleCoverMediaInfo with _$ArticleCoverMediaInfo {
  const factory ArticleCoverMediaInfo({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    @JsonKey(name: 'color_info')
    required ArticleCoverMediaColorInfo colorInfo,
    @JsonKey(name: 'original_img_height')
    required int originalImgHeight,
    @JsonKey(name: 'original_img_url')
    required String originalImgUrl,
    @JsonKey(name: 'original_img_width')
    required int originalImgWidth,
  }) = _ArticleCoverMediaInfo;
  
  factory ArticleCoverMediaInfo.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaInfoFromJson(json);
}
