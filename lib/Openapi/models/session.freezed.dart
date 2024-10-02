// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  @JsonKey(name: 'SsoInitTokens')
  dynamic get ssoInitTokens => throw _privateConstructorUsedError;
  CommunitiesActions get communitiesActions =>
      throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get guestId => throw _privateConstructorUsedError;
  bool get hasCommunityMemberships => throw _privateConstructorUsedError;
  bool get isActiveCreator => throw _privateConstructorUsedError;
  bool get isRestrictedSession => throw _privateConstructorUsedError;
  bool get isSuperFollowSubscriber => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  OneFactorLoginEligibility get oneFactorLoginEligibility =>
      throw _privateConstructorUsedError;
  int get superFollowersCount => throw _privateConstructorUsedError;
  SessionSuperFollowsApplicationStatus get superFollowsApplicationStatus =>
      throw _privateConstructorUsedError;
  UserFeatures get userFeatures => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SsoInitTokens') dynamic ssoInitTokens,
      CommunitiesActions communitiesActions,
      String country,
      String guestId,
      bool hasCommunityMemberships,
      bool isActiveCreator,
      bool isRestrictedSession,
      bool isSuperFollowSubscriber,
      String language,
      OneFactorLoginEligibility oneFactorLoginEligibility,
      int superFollowersCount,
      SessionSuperFollowsApplicationStatus superFollowsApplicationStatus,
      UserFeatures userFeatures,
      @JsonKey(name: 'user_id') String userId});

  $CommunitiesActionsCopyWith<$Res> get communitiesActions;
  $OneFactorLoginEligibilityCopyWith<$Res> get oneFactorLoginEligibility;
  $UserFeaturesCopyWith<$Res> get userFeatures;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssoInitTokens = freezed,
    Object? communitiesActions = null,
    Object? country = null,
    Object? guestId = null,
    Object? hasCommunityMemberships = null,
    Object? isActiveCreator = null,
    Object? isRestrictedSession = null,
    Object? isSuperFollowSubscriber = null,
    Object? language = null,
    Object? oneFactorLoginEligibility = null,
    Object? superFollowersCount = null,
    Object? superFollowsApplicationStatus = null,
    Object? userFeatures = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      ssoInitTokens: freezed == ssoInitTokens
          ? _value.ssoInitTokens
          : ssoInitTokens // ignore: cast_nullable_to_non_nullable
              as dynamic,
      communitiesActions: null == communitiesActions
          ? _value.communitiesActions
          : communitiesActions // ignore: cast_nullable_to_non_nullable
              as CommunitiesActions,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: null == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String,
      hasCommunityMemberships: null == hasCommunityMemberships
          ? _value.hasCommunityMemberships
          : hasCommunityMemberships // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveCreator: null == isActiveCreator
          ? _value.isActiveCreator
          : isActiveCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      isRestrictedSession: null == isRestrictedSession
          ? _value.isRestrictedSession
          : isRestrictedSession // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuperFollowSubscriber: null == isSuperFollowSubscriber
          ? _value.isSuperFollowSubscriber
          : isSuperFollowSubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      oneFactorLoginEligibility: null == oneFactorLoginEligibility
          ? _value.oneFactorLoginEligibility
          : oneFactorLoginEligibility // ignore: cast_nullable_to_non_nullable
              as OneFactorLoginEligibility,
      superFollowersCount: null == superFollowersCount
          ? _value.superFollowersCount
          : superFollowersCount // ignore: cast_nullable_to_non_nullable
              as int,
      superFollowsApplicationStatus: null == superFollowsApplicationStatus
          ? _value.superFollowsApplicationStatus
          : superFollowsApplicationStatus // ignore: cast_nullable_to_non_nullable
              as SessionSuperFollowsApplicationStatus,
      userFeatures: null == userFeatures
          ? _value.userFeatures
          : userFeatures // ignore: cast_nullable_to_non_nullable
              as UserFeatures,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunitiesActionsCopyWith<$Res> get communitiesActions {
    return $CommunitiesActionsCopyWith<$Res>(_value.communitiesActions,
        (value) {
      return _then(_value.copyWith(communitiesActions: value) as $Val);
    });
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OneFactorLoginEligibilityCopyWith<$Res> get oneFactorLoginEligibility {
    return $OneFactorLoginEligibilityCopyWith<$Res>(
        _value.oneFactorLoginEligibility, (value) {
      return _then(_value.copyWith(oneFactorLoginEligibility: value) as $Val);
    });
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserFeaturesCopyWith<$Res> get userFeatures {
    return $UserFeaturesCopyWith<$Res>(_value.userFeatures, (value) {
      return _then(_value.copyWith(userFeatures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SsoInitTokens') dynamic ssoInitTokens,
      CommunitiesActions communitiesActions,
      String country,
      String guestId,
      bool hasCommunityMemberships,
      bool isActiveCreator,
      bool isRestrictedSession,
      bool isSuperFollowSubscriber,
      String language,
      OneFactorLoginEligibility oneFactorLoginEligibility,
      int superFollowersCount,
      SessionSuperFollowsApplicationStatus superFollowsApplicationStatus,
      UserFeatures userFeatures,
      @JsonKey(name: 'user_id') String userId});

  @override
  $CommunitiesActionsCopyWith<$Res> get communitiesActions;
  @override
  $OneFactorLoginEligibilityCopyWith<$Res> get oneFactorLoginEligibility;
  @override
  $UserFeaturesCopyWith<$Res> get userFeatures;
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssoInitTokens = freezed,
    Object? communitiesActions = null,
    Object? country = null,
    Object? guestId = null,
    Object? hasCommunityMemberships = null,
    Object? isActiveCreator = null,
    Object? isRestrictedSession = null,
    Object? isSuperFollowSubscriber = null,
    Object? language = null,
    Object? oneFactorLoginEligibility = null,
    Object? superFollowersCount = null,
    Object? superFollowsApplicationStatus = null,
    Object? userFeatures = null,
    Object? userId = null,
  }) {
    return _then(_$SessionImpl(
      ssoInitTokens: freezed == ssoInitTokens
          ? _value.ssoInitTokens
          : ssoInitTokens // ignore: cast_nullable_to_non_nullable
              as dynamic,
      communitiesActions: null == communitiesActions
          ? _value.communitiesActions
          : communitiesActions // ignore: cast_nullable_to_non_nullable
              as CommunitiesActions,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: null == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String,
      hasCommunityMemberships: null == hasCommunityMemberships
          ? _value.hasCommunityMemberships
          : hasCommunityMemberships // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveCreator: null == isActiveCreator
          ? _value.isActiveCreator
          : isActiveCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      isRestrictedSession: null == isRestrictedSession
          ? _value.isRestrictedSession
          : isRestrictedSession // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuperFollowSubscriber: null == isSuperFollowSubscriber
          ? _value.isSuperFollowSubscriber
          : isSuperFollowSubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      oneFactorLoginEligibility: null == oneFactorLoginEligibility
          ? _value.oneFactorLoginEligibility
          : oneFactorLoginEligibility // ignore: cast_nullable_to_non_nullable
              as OneFactorLoginEligibility,
      superFollowersCount: null == superFollowersCount
          ? _value.superFollowersCount
          : superFollowersCount // ignore: cast_nullable_to_non_nullable
              as int,
      superFollowsApplicationStatus: null == superFollowsApplicationStatus
          ? _value.superFollowsApplicationStatus
          : superFollowsApplicationStatus // ignore: cast_nullable_to_non_nullable
              as SessionSuperFollowsApplicationStatus,
      userFeatures: null == userFeatures
          ? _value.userFeatures
          : userFeatures // ignore: cast_nullable_to_non_nullable
              as UserFeatures,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl(
      {@JsonKey(name: 'SsoInitTokens') required this.ssoInitTokens,
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
      @JsonKey(name: 'user_id') required this.userId});

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  @JsonKey(name: 'SsoInitTokens')
  final dynamic ssoInitTokens;
  @override
  final CommunitiesActions communitiesActions;
  @override
  final String country;
  @override
  final String guestId;
  @override
  final bool hasCommunityMemberships;
  @override
  final bool isActiveCreator;
  @override
  final bool isRestrictedSession;
  @override
  final bool isSuperFollowSubscriber;
  @override
  final String language;
  @override
  final OneFactorLoginEligibility oneFactorLoginEligibility;
  @override
  final int superFollowersCount;
  @override
  final SessionSuperFollowsApplicationStatus superFollowsApplicationStatus;
  @override
  final UserFeatures userFeatures;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'Session(ssoInitTokens: $ssoInitTokens, communitiesActions: $communitiesActions, country: $country, guestId: $guestId, hasCommunityMemberships: $hasCommunityMemberships, isActiveCreator: $isActiveCreator, isRestrictedSession: $isRestrictedSession, isSuperFollowSubscriber: $isSuperFollowSubscriber, language: $language, oneFactorLoginEligibility: $oneFactorLoginEligibility, superFollowersCount: $superFollowersCount, superFollowsApplicationStatus: $superFollowsApplicationStatus, userFeatures: $userFeatures, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            const DeepCollectionEquality()
                .equals(other.ssoInitTokens, ssoInitTokens) &&
            (identical(other.communitiesActions, communitiesActions) ||
                other.communitiesActions == communitiesActions) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.guestId, guestId) || other.guestId == guestId) &&
            (identical(
                    other.hasCommunityMemberships, hasCommunityMemberships) ||
                other.hasCommunityMemberships == hasCommunityMemberships) &&
            (identical(other.isActiveCreator, isActiveCreator) ||
                other.isActiveCreator == isActiveCreator) &&
            (identical(other.isRestrictedSession, isRestrictedSession) ||
                other.isRestrictedSession == isRestrictedSession) &&
            (identical(
                    other.isSuperFollowSubscriber, isSuperFollowSubscriber) ||
                other.isSuperFollowSubscriber == isSuperFollowSubscriber) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.oneFactorLoginEligibility,
                    oneFactorLoginEligibility) ||
                other.oneFactorLoginEligibility == oneFactorLoginEligibility) &&
            (identical(other.superFollowersCount, superFollowersCount) ||
                other.superFollowersCount == superFollowersCount) &&
            (identical(other.superFollowsApplicationStatus,
                    superFollowsApplicationStatus) ||
                other.superFollowsApplicationStatus ==
                    superFollowsApplicationStatus) &&
            (identical(other.userFeatures, userFeatures) ||
                other.userFeatures == userFeatures) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ssoInitTokens),
      communitiesActions,
      country,
      guestId,
      hasCommunityMemberships,
      isActiveCreator,
      isRestrictedSession,
      isSuperFollowSubscriber,
      language,
      oneFactorLoginEligibility,
      superFollowersCount,
      superFollowsApplicationStatus,
      userFeatures,
      userId);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {@JsonKey(name: 'SsoInitTokens') required final dynamic ssoInitTokens,
      required final CommunitiesActions communitiesActions,
      required final String country,
      required final String guestId,
      required final bool hasCommunityMemberships,
      required final bool isActiveCreator,
      required final bool isRestrictedSession,
      required final bool isSuperFollowSubscriber,
      required final String language,
      required final OneFactorLoginEligibility oneFactorLoginEligibility,
      required final int superFollowersCount,
      required final SessionSuperFollowsApplicationStatus
          superFollowsApplicationStatus,
      required final UserFeatures userFeatures,
      @JsonKey(name: 'user_id') required final String userId}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  @JsonKey(name: 'SsoInitTokens')
  dynamic get ssoInitTokens;
  @override
  CommunitiesActions get communitiesActions;
  @override
  String get country;
  @override
  String get guestId;
  @override
  bool get hasCommunityMemberships;
  @override
  bool get isActiveCreator;
  @override
  bool get isRestrictedSession;
  @override
  bool get isSuperFollowSubscriber;
  @override
  String get language;
  @override
  OneFactorLoginEligibility get oneFactorLoginEligibility;
  @override
  int get superFollowersCount;
  @override
  SessionSuperFollowsApplicationStatus get superFollowsApplicationStatus;
  @override
  UserFeatures get userFeatures;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
