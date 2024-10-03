// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ext_media_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtMediaAvailability _$ExtMediaAvailabilityFromJson(
        Map<String, dynamic> json) =>
    ExtMediaAvailability(
      reason: json['reason'] as String?,
      status: json['status'] == null
          ? null
          : ExtMediaAvailabilityStatus.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$ExtMediaAvailabilityToJson(
        ExtMediaAvailability instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'status': _$ExtMediaAvailabilityStatusEnumMap[instance.status],
    };

const _$ExtMediaAvailabilityStatusEnumMap = {
  ExtMediaAvailabilityStatus.available: 'Available',
  ExtMediaAvailabilityStatus.unavailable: 'Unavailable',
  ExtMediaAvailabilityStatus.$unknown: r'$unknown',
};
