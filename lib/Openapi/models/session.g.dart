// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      ssoInitTokens: json['SsoInitTokens'],
      communitiesActions: CommunitiesActions.fromJson(
          json['communitiesActions'] as Map<String, dynamic>),
      country: json['country'] as String,
      guestId: json['guestId'] as String,
      hasCommunityMemberships: json['hasCommunityMemberships'] as bool,
      isActiveCreator: json['isActiveCreator'] as bool,
      isRestrictedSession: json['isRestrictedSession'] as bool,
      isSuperFollowSubscriber: json['isSuperFollowSubscriber'] as bool,
      language: json['language'] as String,
      oneFactorLoginEligibility: OneFactorLoginEligibility.fromJson(
          json['oneFactorLoginEligibility'] as Map<String, dynamic>),
      superFollowersCount: (json['superFollowersCount'] as num).toInt(),
      superFollowsApplicationStatus:
          SessionSuperFollowsApplicationStatus.fromJson(
              json['superFollowsApplicationStatus'] as String),
      userFeatures:
          UserFeatures.fromJson(json['userFeatures'] as Map<String, dynamic>),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'SsoInitTokens': instance.ssoInitTokens,
      'communitiesActions': instance.communitiesActions,
      'country': instance.country,
      'guestId': instance.guestId,
      'hasCommunityMemberships': instance.hasCommunityMemberships,
      'isActiveCreator': instance.isActiveCreator,
      'isRestrictedSession': instance.isRestrictedSession,
      'isSuperFollowSubscriber': instance.isSuperFollowSubscriber,
      'language': instance.language,
      'oneFactorLoginEligibility': instance.oneFactorLoginEligibility,
      'superFollowersCount': instance.superFollowersCount,
      'superFollowsApplicationStatus':
          _$SessionSuperFollowsApplicationStatusEnumMap[
              instance.superFollowsApplicationStatus]!,
      'userFeatures': instance.userFeatures,
      'user_id': instance.userId,
    };

const _$SessionSuperFollowsApplicationStatusEnumMap = {
  SessionSuperFollowsApplicationStatus.notStarted: 'NotStarted',
  SessionSuperFollowsApplicationStatus.$unknown: r'$unknown',
};
