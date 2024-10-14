// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tweet_card_legacy_binding_value_data_image.g.dart';

@JsonSerializable()
class TweetCardLegacyBindingValueDataImage {
  const TweetCardLegacyBindingValueDataImage({
    required this.alt,
    required this.height,
    required this.url,
    required this.width,
  });

  factory TweetCardLegacyBindingValueDataImage.fromJson(
          Map<String, Object?> json) =>
      _$TweetCardLegacyBindingValueDataImageFromJson(json);

  final String? alt;
  final int height;
  final String url;
  final int width;

  Map<String, Object?> toJson() =>
      _$TweetCardLegacyBindingValueDataImageToJson(this);
}
