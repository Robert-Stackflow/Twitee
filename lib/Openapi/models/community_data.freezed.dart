// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityData _$CommunityDataFromJson(Map<String, dynamic> json) {
  return _CommunityData.fromJson(json);
}

/// @nodoc
mixin _$CommunityData {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  CommunityActions get actions => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_results')
  UserResults get adminResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_results')
  UserResults get creatorResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_banner_media')
  dynamic get customBannerMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_banner_media')
  dynamic get defaultBannerMedia => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_str')
  String get idStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'invites_policy')
  CommunityDataInvitesPolicy get invitesPolicy =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'invites_result')
  CommunityInvitesResult get invitesResult =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pinned')
  bool get isPinned => throw _privateConstructorUsedError;
  @JsonKey(name: 'join_policy')
  CommunityDataJoinPolicy get joinPolicy => throw _privateConstructorUsedError;
  @JsonKey(name: 'join_requests_result')
  CommunityJoinRequestsResult get joinRequestsResult =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'member_count')
  int get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'members_facepile_results')
  List<UserResults> get membersFacepileResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'moderator_count')
  int get moderatorCount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_community_topic')
  PrimaryCommunityTopic get primaryCommunityTopic =>
      throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  CommunityDataRole get role => throw _privateConstructorUsedError;
  List<CommunityRule> get rules => throw _privateConstructorUsedError;
  @JsonKey(name: 'search_tags')
  List<String> get searchTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_only_users_to_display')
  List<String> get showOnlyUsersToDisplay => throw _privateConstructorUsedError;
  CommunityUrls get urls => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_relationship')
  dynamic get viewerRelationship => throw _privateConstructorUsedError;

  /// Serializes this CommunityData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityDataCopyWith<CommunityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityDataCopyWith<$Res> {
  factory $CommunityDataCopyWith(
          CommunityData value, $Res Function(CommunityData) then) =
      _$CommunityDataCopyWithImpl<$Res, CommunityData>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      CommunityActions actions,
      @JsonKey(name: 'admin_results') UserResults adminResults,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'creator_results') UserResults creatorResults,
      @JsonKey(name: 'custom_banner_media') dynamic customBannerMedia,
      @JsonKey(name: 'default_banner_media') dynamic defaultBannerMedia,
      String description,
      @JsonKey(name: 'id_str') String idStr,
      @JsonKey(name: 'invites_policy') CommunityDataInvitesPolicy invitesPolicy,
      @JsonKey(name: 'invites_result') CommunityInvitesResult invitesResult,
      @JsonKey(name: 'is_pinned') bool isPinned,
      @JsonKey(name: 'join_policy') CommunityDataJoinPolicy joinPolicy,
      @JsonKey(name: 'join_requests_result')
      CommunityJoinRequestsResult joinRequestsResult,
      @JsonKey(name: 'member_count') int memberCount,
      @JsonKey(name: 'members_facepile_results')
      List<UserResults> membersFacepileResults,
      @JsonKey(name: 'moderator_count') int moderatorCount,
      String name,
      @JsonKey(name: 'primary_community_topic')
      PrimaryCommunityTopic primaryCommunityTopic,
      String question,
      CommunityDataRole role,
      List<CommunityRule> rules,
      @JsonKey(name: 'search_tags') List<String> searchTags,
      @JsonKey(name: 'show_only_users_to_display')
      List<String> showOnlyUsersToDisplay,
      CommunityUrls urls,
      @JsonKey(name: 'viewer_relationship') dynamic viewerRelationship});

  $CommunityActionsCopyWith<$Res> get actions;
  $UserResultsCopyWith<$Res> get adminResults;
  $UserResultsCopyWith<$Res> get creatorResults;
  $CommunityInvitesResultCopyWith<$Res> get invitesResult;
  $CommunityJoinRequestsResultCopyWith<$Res> get joinRequestsResult;
  $PrimaryCommunityTopicCopyWith<$Res> get primaryCommunityTopic;
  $CommunityUrlsCopyWith<$Res> get urls;
}

/// @nodoc
class _$CommunityDataCopyWithImpl<$Res, $Val extends CommunityData>
    implements $CommunityDataCopyWith<$Res> {
  _$CommunityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? actions = null,
    Object? adminResults = null,
    Object? createdAt = null,
    Object? creatorResults = null,
    Object? customBannerMedia = freezed,
    Object? defaultBannerMedia = freezed,
    Object? description = null,
    Object? idStr = null,
    Object? invitesPolicy = null,
    Object? invitesResult = null,
    Object? isPinned = null,
    Object? joinPolicy = null,
    Object? joinRequestsResult = null,
    Object? memberCount = null,
    Object? membersFacepileResults = null,
    Object? moderatorCount = null,
    Object? name = null,
    Object? primaryCommunityTopic = null,
    Object? question = null,
    Object? role = null,
    Object? rules = null,
    Object? searchTags = null,
    Object? showOnlyUsersToDisplay = null,
    Object? urls = null,
    Object? viewerRelationship = freezed,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as CommunityActions,
      adminResults: null == adminResults
          ? _value.adminResults
          : adminResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      creatorResults: null == creatorResults
          ? _value.creatorResults
          : creatorResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
      customBannerMedia: freezed == customBannerMedia
          ? _value.customBannerMedia
          : customBannerMedia // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultBannerMedia: freezed == defaultBannerMedia
          ? _value.defaultBannerMedia
          : defaultBannerMedia // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
      invitesPolicy: null == invitesPolicy
          ? _value.invitesPolicy
          : invitesPolicy // ignore: cast_nullable_to_non_nullable
              as CommunityDataInvitesPolicy,
      invitesResult: null == invitesResult
          ? _value.invitesResult
          : invitesResult // ignore: cast_nullable_to_non_nullable
              as CommunityInvitesResult,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      joinPolicy: null == joinPolicy
          ? _value.joinPolicy
          : joinPolicy // ignore: cast_nullable_to_non_nullable
              as CommunityDataJoinPolicy,
      joinRequestsResult: null == joinRequestsResult
          ? _value.joinRequestsResult
          : joinRequestsResult // ignore: cast_nullable_to_non_nullable
              as CommunityJoinRequestsResult,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      membersFacepileResults: null == membersFacepileResults
          ? _value.membersFacepileResults
          : membersFacepileResults // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
      moderatorCount: null == moderatorCount
          ? _value.moderatorCount
          : moderatorCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primaryCommunityTopic: null == primaryCommunityTopic
          ? _value.primaryCommunityTopic
          : primaryCommunityTopic // ignore: cast_nullable_to_non_nullable
              as PrimaryCommunityTopic,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CommunityDataRole,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<CommunityRule>,
      searchTags: null == searchTags
          ? _value.searchTags
          : searchTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showOnlyUsersToDisplay: null == showOnlyUsersToDisplay
          ? _value.showOnlyUsersToDisplay
          : showOnlyUsersToDisplay // ignore: cast_nullable_to_non_nullable
              as List<String>,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as CommunityUrls,
      viewerRelationship: freezed == viewerRelationship
          ? _value.viewerRelationship
          : viewerRelationship // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityActionsCopyWith<$Res> get actions {
    return $CommunityActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultsCopyWith<$Res> get adminResults {
    return $UserResultsCopyWith<$Res>(_value.adminResults, (value) {
      return _then(_value.copyWith(adminResults: value) as $Val);
    });
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultsCopyWith<$Res> get creatorResults {
    return $UserResultsCopyWith<$Res>(_value.creatorResults, (value) {
      return _then(_value.copyWith(creatorResults: value) as $Val);
    });
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityInvitesResultCopyWith<$Res> get invitesResult {
    return $CommunityInvitesResultCopyWith<$Res>(_value.invitesResult, (value) {
      return _then(_value.copyWith(invitesResult: value) as $Val);
    });
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityJoinRequestsResultCopyWith<$Res> get joinRequestsResult {
    return $CommunityJoinRequestsResultCopyWith<$Res>(_value.joinRequestsResult,
        (value) {
      return _then(_value.copyWith(joinRequestsResult: value) as $Val);
    });
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryCommunityTopicCopyWith<$Res> get primaryCommunityTopic {
    return $PrimaryCommunityTopicCopyWith<$Res>(_value.primaryCommunityTopic,
        (value) {
      return _then(_value.copyWith(primaryCommunityTopic: value) as $Val);
    });
  }

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityUrlsCopyWith<$Res> get urls {
    return $CommunityUrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityDataImplCopyWith<$Res>
    implements $CommunityDataCopyWith<$Res> {
  factory _$$CommunityDataImplCopyWith(
          _$CommunityDataImpl value, $Res Function(_$CommunityDataImpl) then) =
      __$$CommunityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      CommunityActions actions,
      @JsonKey(name: 'admin_results') UserResults adminResults,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'creator_results') UserResults creatorResults,
      @JsonKey(name: 'custom_banner_media') dynamic customBannerMedia,
      @JsonKey(name: 'default_banner_media') dynamic defaultBannerMedia,
      String description,
      @JsonKey(name: 'id_str') String idStr,
      @JsonKey(name: 'invites_policy') CommunityDataInvitesPolicy invitesPolicy,
      @JsonKey(name: 'invites_result') CommunityInvitesResult invitesResult,
      @JsonKey(name: 'is_pinned') bool isPinned,
      @JsonKey(name: 'join_policy') CommunityDataJoinPolicy joinPolicy,
      @JsonKey(name: 'join_requests_result')
      CommunityJoinRequestsResult joinRequestsResult,
      @JsonKey(name: 'member_count') int memberCount,
      @JsonKey(name: 'members_facepile_results')
      List<UserResults> membersFacepileResults,
      @JsonKey(name: 'moderator_count') int moderatorCount,
      String name,
      @JsonKey(name: 'primary_community_topic')
      PrimaryCommunityTopic primaryCommunityTopic,
      String question,
      CommunityDataRole role,
      List<CommunityRule> rules,
      @JsonKey(name: 'search_tags') List<String> searchTags,
      @JsonKey(name: 'show_only_users_to_display')
      List<String> showOnlyUsersToDisplay,
      CommunityUrls urls,
      @JsonKey(name: 'viewer_relationship') dynamic viewerRelationship});

  @override
  $CommunityActionsCopyWith<$Res> get actions;
  @override
  $UserResultsCopyWith<$Res> get adminResults;
  @override
  $UserResultsCopyWith<$Res> get creatorResults;
  @override
  $CommunityInvitesResultCopyWith<$Res> get invitesResult;
  @override
  $CommunityJoinRequestsResultCopyWith<$Res> get joinRequestsResult;
  @override
  $PrimaryCommunityTopicCopyWith<$Res> get primaryCommunityTopic;
  @override
  $CommunityUrlsCopyWith<$Res> get urls;
}

/// @nodoc
class __$$CommunityDataImplCopyWithImpl<$Res>
    extends _$CommunityDataCopyWithImpl<$Res, _$CommunityDataImpl>
    implements _$$CommunityDataImplCopyWith<$Res> {
  __$$CommunityDataImplCopyWithImpl(
      _$CommunityDataImpl _value, $Res Function(_$CommunityDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? actions = null,
    Object? adminResults = null,
    Object? createdAt = null,
    Object? creatorResults = null,
    Object? customBannerMedia = freezed,
    Object? defaultBannerMedia = freezed,
    Object? description = null,
    Object? idStr = null,
    Object? invitesPolicy = null,
    Object? invitesResult = null,
    Object? isPinned = null,
    Object? joinPolicy = null,
    Object? joinRequestsResult = null,
    Object? memberCount = null,
    Object? membersFacepileResults = null,
    Object? moderatorCount = null,
    Object? name = null,
    Object? primaryCommunityTopic = null,
    Object? question = null,
    Object? role = null,
    Object? rules = null,
    Object? searchTags = null,
    Object? showOnlyUsersToDisplay = null,
    Object? urls = null,
    Object? viewerRelationship = freezed,
  }) {
    return _then(_$CommunityDataImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as CommunityActions,
      adminResults: null == adminResults
          ? _value.adminResults
          : adminResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      creatorResults: null == creatorResults
          ? _value.creatorResults
          : creatorResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
      customBannerMedia: freezed == customBannerMedia
          ? _value.customBannerMedia
          : customBannerMedia // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultBannerMedia: freezed == defaultBannerMedia
          ? _value.defaultBannerMedia
          : defaultBannerMedia // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
      invitesPolicy: null == invitesPolicy
          ? _value.invitesPolicy
          : invitesPolicy // ignore: cast_nullable_to_non_nullable
              as CommunityDataInvitesPolicy,
      invitesResult: null == invitesResult
          ? _value.invitesResult
          : invitesResult // ignore: cast_nullable_to_non_nullable
              as CommunityInvitesResult,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      joinPolicy: null == joinPolicy
          ? _value.joinPolicy
          : joinPolicy // ignore: cast_nullable_to_non_nullable
              as CommunityDataJoinPolicy,
      joinRequestsResult: null == joinRequestsResult
          ? _value.joinRequestsResult
          : joinRequestsResult // ignore: cast_nullable_to_non_nullable
              as CommunityJoinRequestsResult,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      membersFacepileResults: null == membersFacepileResults
          ? _value._membersFacepileResults
          : membersFacepileResults // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
      moderatorCount: null == moderatorCount
          ? _value.moderatorCount
          : moderatorCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primaryCommunityTopic: null == primaryCommunityTopic
          ? _value.primaryCommunityTopic
          : primaryCommunityTopic // ignore: cast_nullable_to_non_nullable
              as PrimaryCommunityTopic,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CommunityDataRole,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<CommunityRule>,
      searchTags: null == searchTags
          ? _value._searchTags
          : searchTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showOnlyUsersToDisplay: null == showOnlyUsersToDisplay
          ? _value._showOnlyUsersToDisplay
          : showOnlyUsersToDisplay // ignore: cast_nullable_to_non_nullable
              as List<String>,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as CommunityUrls,
      viewerRelationship: freezed == viewerRelationship
          ? _value.viewerRelationship
          : viewerRelationship // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityDataImpl implements _CommunityData {
  const _$CommunityDataImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.actions,
      @JsonKey(name: 'admin_results') required this.adminResults,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'creator_results') required this.creatorResults,
      @JsonKey(name: 'custom_banner_media') required this.customBannerMedia,
      @JsonKey(name: 'default_banner_media') required this.defaultBannerMedia,
      required this.description,
      @JsonKey(name: 'id_str') required this.idStr,
      @JsonKey(name: 'invites_policy') required this.invitesPolicy,
      @JsonKey(name: 'invites_result') required this.invitesResult,
      @JsonKey(name: 'is_pinned') required this.isPinned,
      @JsonKey(name: 'join_policy') required this.joinPolicy,
      @JsonKey(name: 'join_requests_result') required this.joinRequestsResult,
      @JsonKey(name: 'member_count') required this.memberCount,
      @JsonKey(name: 'members_facepile_results')
      required final List<UserResults> membersFacepileResults,
      @JsonKey(name: 'moderator_count') required this.moderatorCount,
      required this.name,
      @JsonKey(name: 'primary_community_topic')
      required this.primaryCommunityTopic,
      required this.question,
      required this.role,
      required final List<CommunityRule> rules,
      @JsonKey(name: 'search_tags') required final List<String> searchTags,
      @JsonKey(name: 'show_only_users_to_display')
      required final List<String> showOnlyUsersToDisplay,
      required this.urls,
      @JsonKey(name: 'viewer_relationship') required this.viewerRelationship})
      : _membersFacepileResults = membersFacepileResults,
        _rules = rules,
        _searchTags = searchTags,
        _showOnlyUsersToDisplay = showOnlyUsersToDisplay;

  factory _$CommunityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityDataImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final CommunityActions actions;
  @override
  @JsonKey(name: 'admin_results')
  final UserResults adminResults;
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;
  @override
  @JsonKey(name: 'creator_results')
  final UserResults creatorResults;
  @override
  @JsonKey(name: 'custom_banner_media')
  final dynamic customBannerMedia;
  @override
  @JsonKey(name: 'default_banner_media')
  final dynamic defaultBannerMedia;
  @override
  final String description;
  @override
  @JsonKey(name: 'id_str')
  final String idStr;
  @override
  @JsonKey(name: 'invites_policy')
  final CommunityDataInvitesPolicy invitesPolicy;
  @override
  @JsonKey(name: 'invites_result')
  final CommunityInvitesResult invitesResult;
  @override
  @JsonKey(name: 'is_pinned')
  final bool isPinned;
  @override
  @JsonKey(name: 'join_policy')
  final CommunityDataJoinPolicy joinPolicy;
  @override
  @JsonKey(name: 'join_requests_result')
  final CommunityJoinRequestsResult joinRequestsResult;
  @override
  @JsonKey(name: 'member_count')
  final int memberCount;
  final List<UserResults> _membersFacepileResults;
  @override
  @JsonKey(name: 'members_facepile_results')
  List<UserResults> get membersFacepileResults {
    if (_membersFacepileResults is EqualUnmodifiableListView)
      return _membersFacepileResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersFacepileResults);
  }

  @override
  @JsonKey(name: 'moderator_count')
  final int moderatorCount;
  @override
  final String name;
  @override
  @JsonKey(name: 'primary_community_topic')
  final PrimaryCommunityTopic primaryCommunityTopic;
  @override
  final String question;
  @override
  final CommunityDataRole role;
  final List<CommunityRule> _rules;
  @override
  List<CommunityRule> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  final List<String> _searchTags;
  @override
  @JsonKey(name: 'search_tags')
  List<String> get searchTags {
    if (_searchTags is EqualUnmodifiableListView) return _searchTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchTags);
  }

  final List<String> _showOnlyUsersToDisplay;
  @override
  @JsonKey(name: 'show_only_users_to_display')
  List<String> get showOnlyUsersToDisplay {
    if (_showOnlyUsersToDisplay is EqualUnmodifiableListView)
      return _showOnlyUsersToDisplay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_showOnlyUsersToDisplay);
  }

  @override
  final CommunityUrls urls;
  @override
  @JsonKey(name: 'viewer_relationship')
  final dynamic viewerRelationship;

  @override
  String toString() {
    return 'CommunityData(privateTypename: $privateTypename, actions: $actions, adminResults: $adminResults, createdAt: $createdAt, creatorResults: $creatorResults, customBannerMedia: $customBannerMedia, defaultBannerMedia: $defaultBannerMedia, description: $description, idStr: $idStr, invitesPolicy: $invitesPolicy, invitesResult: $invitesResult, isPinned: $isPinned, joinPolicy: $joinPolicy, joinRequestsResult: $joinRequestsResult, memberCount: $memberCount, membersFacepileResults: $membersFacepileResults, moderatorCount: $moderatorCount, name: $name, primaryCommunityTopic: $primaryCommunityTopic, question: $question, role: $role, rules: $rules, searchTags: $searchTags, showOnlyUsersToDisplay: $showOnlyUsersToDisplay, urls: $urls, viewerRelationship: $viewerRelationship)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityDataImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.adminResults, adminResults) ||
                other.adminResults == adminResults) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorResults, creatorResults) ||
                other.creatorResults == creatorResults) &&
            const DeepCollectionEquality()
                .equals(other.customBannerMedia, customBannerMedia) &&
            const DeepCollectionEquality()
                .equals(other.defaultBannerMedia, defaultBannerMedia) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.idStr, idStr) || other.idStr == idStr) &&
            (identical(other.invitesPolicy, invitesPolicy) ||
                other.invitesPolicy == invitesPolicy) &&
            (identical(other.invitesResult, invitesResult) ||
                other.invitesResult == invitesResult) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.joinPolicy, joinPolicy) ||
                other.joinPolicy == joinPolicy) &&
            (identical(other.joinRequestsResult, joinRequestsResult) ||
                other.joinRequestsResult == joinRequestsResult) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            const DeepCollectionEquality().equals(
                other._membersFacepileResults, _membersFacepileResults) &&
            (identical(other.moderatorCount, moderatorCount) ||
                other.moderatorCount == moderatorCount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.primaryCommunityTopic, primaryCommunityTopic) ||
                other.primaryCommunityTopic == primaryCommunityTopic) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality()
                .equals(other._searchTags, _searchTags) &&
            const DeepCollectionEquality().equals(
                other._showOnlyUsersToDisplay, _showOnlyUsersToDisplay) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            const DeepCollectionEquality()
                .equals(other.viewerRelationship, viewerRelationship));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        privateTypename,
        actions,
        adminResults,
        createdAt,
        creatorResults,
        const DeepCollectionEquality().hash(customBannerMedia),
        const DeepCollectionEquality().hash(defaultBannerMedia),
        description,
        idStr,
        invitesPolicy,
        invitesResult,
        isPinned,
        joinPolicy,
        joinRequestsResult,
        memberCount,
        const DeepCollectionEquality().hash(_membersFacepileResults),
        moderatorCount,
        name,
        primaryCommunityTopic,
        question,
        role,
        const DeepCollectionEquality().hash(_rules),
        const DeepCollectionEquality().hash(_searchTags),
        const DeepCollectionEquality().hash(_showOnlyUsersToDisplay),
        urls,
        const DeepCollectionEquality().hash(viewerRelationship)
      ]);

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityDataImplCopyWith<_$CommunityDataImpl> get copyWith =>
      __$$CommunityDataImplCopyWithImpl<_$CommunityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityDataImplToJson(
      this,
    );
  }
}

abstract class _CommunityData implements CommunityData {
  const factory _CommunityData(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final CommunityActions actions,
      @JsonKey(name: 'admin_results') required final UserResults adminResults,
      @JsonKey(name: 'created_at') required final int createdAt,
      @JsonKey(name: 'creator_results')
      required final UserResults creatorResults,
      @JsonKey(name: 'custom_banner_media')
      required final dynamic customBannerMedia,
      @JsonKey(name: 'default_banner_media')
      required final dynamic defaultBannerMedia,
      required final String description,
      @JsonKey(name: 'id_str') required final String idStr,
      @JsonKey(name: 'invites_policy')
      required final CommunityDataInvitesPolicy invitesPolicy,
      @JsonKey(name: 'invites_result')
      required final CommunityInvitesResult invitesResult,
      @JsonKey(name: 'is_pinned') required final bool isPinned,
      @JsonKey(name: 'join_policy')
      required final CommunityDataJoinPolicy joinPolicy,
      @JsonKey(name: 'join_requests_result')
      required final CommunityJoinRequestsResult joinRequestsResult,
      @JsonKey(name: 'member_count') required final int memberCount,
      @JsonKey(name: 'members_facepile_results')
      required final List<UserResults> membersFacepileResults,
      @JsonKey(name: 'moderator_count') required final int moderatorCount,
      required final String name,
      @JsonKey(name: 'primary_community_topic')
      required final PrimaryCommunityTopic primaryCommunityTopic,
      required final String question,
      required final CommunityDataRole role,
      required final List<CommunityRule> rules,
      @JsonKey(name: 'search_tags') required final List<String> searchTags,
      @JsonKey(name: 'show_only_users_to_display')
      required final List<String> showOnlyUsersToDisplay,
      required final CommunityUrls urls,
      @JsonKey(name: 'viewer_relationship')
      required final dynamic viewerRelationship}) = _$CommunityDataImpl;

  factory _CommunityData.fromJson(Map<String, dynamic> json) =
      _$CommunityDataImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  CommunityActions get actions;
  @override
  @JsonKey(name: 'admin_results')
  UserResults get adminResults;
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;
  @override
  @JsonKey(name: 'creator_results')
  UserResults get creatorResults;
  @override
  @JsonKey(name: 'custom_banner_media')
  dynamic get customBannerMedia;
  @override
  @JsonKey(name: 'default_banner_media')
  dynamic get defaultBannerMedia;
  @override
  String get description;
  @override
  @JsonKey(name: 'id_str')
  String get idStr;
  @override
  @JsonKey(name: 'invites_policy')
  CommunityDataInvitesPolicy get invitesPolicy;
  @override
  @JsonKey(name: 'invites_result')
  CommunityInvitesResult get invitesResult;
  @override
  @JsonKey(name: 'is_pinned')
  bool get isPinned;
  @override
  @JsonKey(name: 'join_policy')
  CommunityDataJoinPolicy get joinPolicy;
  @override
  @JsonKey(name: 'join_requests_result')
  CommunityJoinRequestsResult get joinRequestsResult;
  @override
  @JsonKey(name: 'member_count')
  int get memberCount;
  @override
  @JsonKey(name: 'members_facepile_results')
  List<UserResults> get membersFacepileResults;
  @override
  @JsonKey(name: 'moderator_count')
  int get moderatorCount;
  @override
  String get name;
  @override
  @JsonKey(name: 'primary_community_topic')
  PrimaryCommunityTopic get primaryCommunityTopic;
  @override
  String get question;
  @override
  CommunityDataRole get role;
  @override
  List<CommunityRule> get rules;
  @override
  @JsonKey(name: 'search_tags')
  List<String> get searchTags;
  @override
  @JsonKey(name: 'show_only_users_to_display')
  List<String> get showOnlyUsersToDisplay;
  @override
  CommunityUrls get urls;
  @override
  @JsonKey(name: 'viewer_relationship')
  dynamic get viewerRelationship;

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityDataImplCopyWith<_$CommunityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
