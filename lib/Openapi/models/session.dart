// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'communities_actions.dart';
import 'one_factor_login_eligibility.dart';
import 'session_super_follows_application_status.dart';
import 'user_features.dart';

part 'session.g.dart';

@JsonSerializable()
class Session {
  const Session({
    required this.ssoInitTokens,
    required this.communitiesActions,
    required this.country,
    required this.guestId,
    required this.hasCommunityMemberships,
    required this.isActiveCreator,
    required this.isRestrictedSession,
    required this.isSuperFollowSubscriber,
    required this.language,
    required this.oneFactorLoginEligibility,
    required this.superFollowersCount,
    required this.superFollowsApplicationStatus,
    required this.userFeatures,
    required this.userId,
  });

  factory Session.fromJson(Map<String, Object?> json) =>
      _$SessionFromJson(json);

  @JsonKey(name: 'SsoInitTokens')
  final dynamic ssoInitTokens;
  final CommunitiesActions communitiesActions;
  final String country;
  final String guestId;
  final bool hasCommunityMemberships;
  final bool isActiveCreator;
  final bool isRestrictedSession;
  final bool isSuperFollowSubscriber;
  final String language;
  final OneFactorLoginEligibility oneFactorLoginEligibility;
  final int superFollowersCount;
  final SessionSuperFollowsApplicationStatus superFollowsApplicationStatus;
  final UserFeatures userFeatures;
  @JsonKey(name: 'user_id')
  final String? userId;

  Map<String, Object?> toJson() => _$SessionToJson(this);
}
