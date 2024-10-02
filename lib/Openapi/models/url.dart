// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'url.freezed.dart';
part 'url.g.dart';

@Freezed()
 class Url with _$Url {
  const factory Url({
    @JsonKey(name: 'display_url')
    required String displayUrl,
    @JsonKey(name: 'expanded_url')
    required String expandedUrl,
    required List<int> indices,
    required String url,
  }) = _Url;
  
  factory Url.fromJson(Map<String, Object?> json) => _$UrlFromJson(json);
}
