// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tip_jar_settings.freezed.dart';
part 'user_tip_jar_settings.g.dart';

@Freezed()
class UserTipJarSettings with _$UserTipJarSettings {
  const factory UserTipJarSettings({
    @JsonKey(name: 'bandcamp_handle')
    required String bandcampHandle,
    @JsonKey(name: 'bitcoin_handle')
    required String bitcoinHandle,
    @JsonKey(name: 'cash_app_handle')
    required String cashAppHandle,
    @JsonKey(name: 'ethereum_handle')
    required String ethereumHandle,
    @JsonKey(name: 'gofundme_handle')
    required String gofundmeHandle,
    @JsonKey(name: 'is_enabled')
    required bool isEnabled,
    @JsonKey(name: 'patreon_handle')
    required String patreonHandle,
    @JsonKey(name: 'venmo_handle')
    required String venmoHandle,
  }) = _UserTipJarSettings;
  
  factory UserTipJarSettings.fromJson(Map<String, Object?> json) => _$UserTipJarSettingsFromJson(json);
}
