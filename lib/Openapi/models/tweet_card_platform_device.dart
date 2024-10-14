// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tweet_card_platform_device.g.dart';

@JsonSerializable()
class TweetCardPlatformDevice {
  const TweetCardPlatformDevice({
    required this.name,
    required this.version,
  });

  factory TweetCardPlatformDevice.fromJson(Map<String, Object?> json) =>
      _$TweetCardPlatformDeviceFromJson(json);

  final String name;
  final String version;

  Map<String, Object?> toJson() => _$TweetCardPlatformDeviceToJson(this);
}
