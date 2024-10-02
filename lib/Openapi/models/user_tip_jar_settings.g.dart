// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tip_jar_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTipJarSettingsImpl _$$UserTipJarSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTipJarSettingsImpl(
      bandcampHandle: json['bandcamp_handle'] as String,
      bitcoinHandle: json['bitcoin_handle'] as String,
      cashAppHandle: json['cash_app_handle'] as String,
      ethereumHandle: json['ethereum_handle'] as String,
      gofundmeHandle: json['gofundme_handle'] as String,
      isEnabled: json['is_enabled'] as bool,
      patreonHandle: json['patreon_handle'] as String,
      venmoHandle: json['venmo_handle'] as String,
    );

Map<String, dynamic> _$$UserTipJarSettingsImplToJson(
        _$UserTipJarSettingsImpl instance) =>
    <String, dynamic>{
      'bandcamp_handle': instance.bandcampHandle,
      'bitcoin_handle': instance.bitcoinHandle,
      'cash_app_handle': instance.cashAppHandle,
      'ethereum_handle': instance.ethereumHandle,
      'gofundme_handle': instance.gofundmeHandle,
      'is_enabled': instance.isEnabled,
      'patreon_handle': instance.patreonHandle,
      'venmo_handle': instance.venmoHandle,
    };
