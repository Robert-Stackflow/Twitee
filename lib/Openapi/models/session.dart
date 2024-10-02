// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'communities_actions.dart';
import 'one_factor_login_eligibility.dart';
import 'session_super_follows_application_status.dart';
import 'user_features.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@Freezed()
class Session with _$Session {
  const factory Session({
    @JsonKey(name: 'SsoInitTokens')
    required dynamic ssoInitTokens,
    required CommunitiesActions communitiesActions,
    required String country,
    required String guestId,
    required bool hasCommunityMemberships,
    required bool isActiveCreator,
    required bool isRestrictedSession,
    required bool isSuperFollowSubscriber,
    required String language,
    required OneFactorLoginEligibility oneFactorLoginEligibility,
    required int superFollowersCount,
    required SessionSuperFollowsApplicationStatus superFollowsApplicationStatus,
    required UserFeatures userFeatures,
    @JsonKey(name: 'user_id')
    required String userId,
  }) = _Session;
  
  factory Session.fromJson(Map<String, Object?> json) => _$SessionFromJson(json);
}
