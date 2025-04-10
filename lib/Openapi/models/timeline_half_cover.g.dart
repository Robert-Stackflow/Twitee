// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_half_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineHalfCover _$TimelineHalfCoverFromJson(Map<String, dynamic> json) =>
    TimelineHalfCover(
      dismissible: json['dismissible'] as bool,
      halfCoverDisplayType: TimelineHalfCoverHalfCoverDisplayType.fromJson(
          json['halfCoverDisplayType'] as String),
      impressionCallbacks: (json['impressionCallbacks'] as List<dynamic>)
          .map((e) => Callback.fromJson(e as Map<String, dynamic>))
          .toList(),
      primaryCoverCta:
          CoverCta.fromJson(json['primaryCoverCta'] as Map<String, dynamic>),
      primaryText:
          TextItem.fromJson(json['primaryText'] as Map<String, dynamic>),
      secondaryText:
          TextItem.fromJson(json['secondaryText'] as Map<String, dynamic>),
      type: TimelineHalfCoverType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelineHalfCoverToJson(TimelineHalfCover instance) =>
    <String, dynamic>{
      'dismissible': instance.dismissible,
      'halfCoverDisplayType': _$TimelineHalfCoverHalfCoverDisplayTypeEnumMap[
          instance.halfCoverDisplayType]!,
      'impressionCallbacks': instance.impressionCallbacks,
      'primaryCoverCta': instance.primaryCoverCta,
      'primaryText': instance.primaryText,
      'secondaryText': instance.secondaryText,
      'type': _$TimelineHalfCoverTypeEnumMap[instance.type]!,
    };

const _$TimelineHalfCoverHalfCoverDisplayTypeEnumMap = {
  TimelineHalfCoverHalfCoverDisplayType.cover: 'Cover',
  TimelineHalfCoverHalfCoverDisplayType.$unknown: r'$unknown',
};

const _$TimelineHalfCoverTypeEnumMap = {
  TimelineHalfCoverType.timelineHalfCover: 'TimelineHalfCover',
  TimelineHalfCoverType.$unknown: r'$unknown',
};
