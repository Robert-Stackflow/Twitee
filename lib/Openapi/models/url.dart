// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'url.g.dart';

@JsonSerializable()
class Url {
  const Url({
    required this.displayUrl,
    required this.expandedUrl,
    required this.indices,
    required this.url,
  });

  factory Url.fromJson(Map<String, Object?> json) => _$UrlFromJson(json);

  @JsonKey(name: 'display_url')
  final String? displayUrl;
  @JsonKey(name: 'expanded_url')
  final String? expandedUrl;
  final List<int> indices;
  final String url;

  Map<String, Object?> toJson() => _$UrlToJson(this);
}
