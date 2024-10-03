// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_cover_media_color_info.dart';
import 'type_name.dart';

part 'article_cover_media_info.g.dart';

@JsonSerializable()
class ArticleCoverMediaInfo  {
  const ArticleCoverMediaInfo({
    required this.privateTypename,
    required this.colorInfo,
    required this.originalImgHeight,
    required this.originalImgUrl,
    required this.originalImgWidth,
  });
  
  factory ArticleCoverMediaInfo.fromJson(Map<String, Object?> json) => _$ArticleCoverMediaInfoFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  @JsonKey(name: 'color_info')
  final ArticleCoverMediaColorInfo? colorInfo;
  @JsonKey(name: 'original_img_height')
  final int? originalImgHeight;
  @JsonKey(name: 'original_img_url')
  final String? originalImgUrl;
  @JsonKey(name: 'original_img_width')
  final int? originalImgWidth;

  Map<String, Object?> toJson() => _$ArticleCoverMediaInfoToJson(this);
}
