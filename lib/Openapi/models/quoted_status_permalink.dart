// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'quoted_status_permalink.g.dart';

@JsonSerializable()
class QuotedStatusPermalink {
  const QuotedStatusPermalink({
    required this.display,
    required this.expanded,
    required this.url,
  });

  factory QuotedStatusPermalink.fromJson(Map<String, Object?> json) =>
      _$QuotedStatusPermalinkFromJson(json);

  final String display;
  final String expanded;
  final String url;

  Map<String, Object?> toJson() => _$QuotedStatusPermalinkToJson(this);
}
