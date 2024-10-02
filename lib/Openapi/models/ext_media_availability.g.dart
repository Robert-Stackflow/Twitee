// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ext_media_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtMediaAvailabilityImpl _$$ExtMediaAvailabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtMediaAvailabilityImpl(
      reason: json['reason'] as String,
      status: ExtMediaAvailabilityStatus.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$ExtMediaAvailabilityImplToJson(
        _$ExtMediaAvailabilityImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'status': _$ExtMediaAvailabilityStatusEnumMap[instance.status]!,
    };

const _$ExtMediaAvailabilityStatusEnumMap = {
  ExtMediaAvailabilityStatus.available: 'Available',
  ExtMediaAvailabilityStatus.unavailable: 'Unavailable',
  ExtMediaAvailabilityStatus.$unknown: r'$unknown',
};
