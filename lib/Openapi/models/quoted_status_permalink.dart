// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quoted_status_permalink.freezed.dart';
part 'quoted_status_permalink.g.dart';

@Freezed()
 class QuotedStatusPermalink with _$QuotedStatusPermalink {
  const factory QuotedStatusPermalink({
    required String display,
    required String expanded,
    required String url,
  }) = _QuotedStatusPermalink;
  
  factory QuotedStatusPermalink.fromJson(Map<String, Object?> json) => _$QuotedStatusPermalinkFromJson(json);
}
