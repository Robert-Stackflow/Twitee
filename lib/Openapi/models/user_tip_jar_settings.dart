// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_tip_jar_settings.g.dart';

@JsonSerializable()
class UserTipJarSettings {
  const UserTipJarSettings({
    required this.bandcampHandle,
    required this.bitcoinHandle,
    required this.cashAppHandle,
    required this.ethereumHandle,
    required this.gofundmeHandle,
    required this.isEnabled,
    required this.patreonHandle,
    required this.venmoHandle,
  });

  factory UserTipJarSettings.fromJson(Map<String, Object?> json) =>
      _$UserTipJarSettingsFromJson(json);

  @JsonKey(name: 'bandcamp_handle')
  final String? bandcampHandle;
  @JsonKey(name: 'bitcoin_handle')
  final String? bitcoinHandle;
  @JsonKey(name: 'cash_app_handle')
  final String? cashAppHandle;
  @JsonKey(name: 'ethereum_handle')
  final String? ethereumHandle;
  @JsonKey(name: 'gofundme_handle')
  final String? gofundmeHandle;
  @JsonKey(name: 'is_enabled')
  final bool? isEnabled;
  @JsonKey(name: 'patreon_handle')
  final String? patreonHandle;
  @JsonKey(name: 'venmo_handle')
  final String? venmoHandle;

  Map<String, Object?> toJson() => _$UserTipJarSettingsToJson(this);
}
