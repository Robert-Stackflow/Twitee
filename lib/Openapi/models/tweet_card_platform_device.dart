// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_card_platform_device.freezed.dart';
part 'tweet_card_platform_device.g.dart';

@Freezed()
class TweetCardPlatformDevice with _$TweetCardPlatformDevice {
  const factory TweetCardPlatformDevice({
    required String name,
    required String version,
  }) = _TweetCardPlatformDevice;
  
  factory TweetCardPlatformDevice.fromJson(Map<String, Object?> json) => _$TweetCardPlatformDeviceFromJson(json);
}
