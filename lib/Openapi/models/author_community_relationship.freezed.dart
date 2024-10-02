// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_community_relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthorCommunityRelationship _$AuthorCommunityRelationshipFromJson(
    Map<String, dynamic> json) {
  return _AuthorCommunityRelationship.fromJson(json);
}

/// @nodoc
mixin _$AuthorCommunityRelationship {
  @JsonKey(name: 'community_results')
  Community get communityResults => throw _privateConstructorUsedError;
  AuthorCommunityRelationshipRole get role =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_results')
  UserResults get userResults => throw _privateConstructorUsedError;

  /// Serializes this AuthorCommunityRelationship to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCommunityRelationshipCopyWith<AuthorCommunityRelationship>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCommunityRelationshipCopyWith<$Res> {
  factory $AuthorCommunityRelationshipCopyWith(
          AuthorCommunityRelationship value,
          $Res Function(AuthorCommunityRelationship) then) =
      _$AuthorCommunityRelationshipCopyWithImpl<$Res,
          AuthorCommunityRelationship>;
  @useResult
  $Res call(
      {@JsonKey(name: 'community_results') Community communityResults,
      AuthorCommunityRelationshipRole role,
      @JsonKey(name: 'user_results') UserResults userResults});

  $CommunityCopyWith<$Res> get communityResults;
  $UserResultsCopyWith<$Res> get userResults;
}

/// @nodoc
class _$AuthorCommunityRelationshipCopyWithImpl<$Res,
        $Val extends AuthorCommunityRelationship>
    implements $AuthorCommunityRelationshipCopyWith<$Res> {
  _$AuthorCommunityRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityResults = null,
    Object? role = null,
    Object? userResults = null,
  }) {
    return _then(_value.copyWith(
      communityResults: null == communityResults
          ? _value.communityResults
          : communityResults // ignore: cast_nullable_to_non_nullable
              as Community,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AuthorCommunityRelationshipRole,
      userResults: null == userResults
          ? _value.userResults
          : userResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
    ) as $Val);
  }

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res> get communityResults {
    return $CommunityCopyWith<$Res>(_value.communityResults, (value) {
      return _then(_value.copyWith(communityResults: value) as $Val);
    });
  }

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultsCopyWith<$Res> get userResults {
    return $UserResultsCopyWith<$Res>(_value.userResults, (value) {
      return _then(_value.copyWith(userResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorCommunityRelationshipImplCopyWith<$Res>
    implements $AuthorCommunityRelationshipCopyWith<$Res> {
  factory _$$AuthorCommunityRelationshipImplCopyWith(
          _$AuthorCommunityRelationshipImpl value,
          $Res Function(_$AuthorCommunityRelationshipImpl) then) =
      __$$AuthorCommunityRelationshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'community_results') Community communityResults,
      AuthorCommunityRelationshipRole role,
      @JsonKey(name: 'user_results') UserResults userResults});

  @override
  $CommunityCopyWith<$Res> get communityResults;
  @override
  $UserResultsCopyWith<$Res> get userResults;
}

/// @nodoc
class __$$AuthorCommunityRelationshipImplCopyWithImpl<$Res>
    extends _$AuthorCommunityRelationshipCopyWithImpl<$Res,
        _$AuthorCommunityRelationshipImpl>
    implements _$$AuthorCommunityRelationshipImplCopyWith<$Res> {
  __$$AuthorCommunityRelationshipImplCopyWithImpl(
      _$AuthorCommunityRelationshipImpl _value,
      $Res Function(_$AuthorCommunityRelationshipImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityResults = null,
    Object? role = null,
    Object? userResults = null,
  }) {
    return _then(_$AuthorCommunityRelationshipImpl(
      communityResults: null == communityResults
          ? _value.communityResults
          : communityResults // ignore: cast_nullable_to_non_nullable
              as Community,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AuthorCommunityRelationshipRole,
      userResults: null == userResults
          ? _value.userResults
          : userResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorCommunityRelationshipImpl
    implements _AuthorCommunityRelationship {
  const _$AuthorCommunityRelationshipImpl(
      {@JsonKey(name: 'community_results') required this.communityResults,
      required this.role,
      @JsonKey(name: 'user_results') required this.userResults});

  factory _$AuthorCommunityRelationshipImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthorCommunityRelationshipImplFromJson(json);

  @override
  @JsonKey(name: 'community_results')
  final Community communityResults;
  @override
  final AuthorCommunityRelationshipRole role;
  @override
  @JsonKey(name: 'user_results')
  final UserResults userResults;

  @override
  String toString() {
    return 'AuthorCommunityRelationship(communityResults: $communityResults, role: $role, userResults: $userResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorCommunityRelationshipImpl &&
            (identical(other.communityResults, communityResults) ||
                other.communityResults == communityResults) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userResults, userResults) ||
                other.userResults == userResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, communityResults, role, userResults);

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorCommunityRelationshipImplCopyWith<_$AuthorCommunityRelationshipImpl>
      get copyWith => __$$AuthorCommunityRelationshipImplCopyWithImpl<
          _$AuthorCommunityRelationshipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorCommunityRelationshipImplToJson(
      this,
    );
  }
}

abstract class _AuthorCommunityRelationship
    implements AuthorCommunityRelationship {
  const factory _AuthorCommunityRelationship(
          {@JsonKey(name: 'community_results')
          required final Community communityResults,
          required final AuthorCommunityRelationshipRole role,
          @JsonKey(name: 'user_results')
          required final UserResults userResults}) =
      _$AuthorCommunityRelationshipImpl;

  factory _AuthorCommunityRelationship.fromJson(Map<String, dynamic> json) =
      _$AuthorCommunityRelationshipImpl.fromJson;

  @override
  @JsonKey(name: 'community_results')
  Community get communityResults;
  @override
  AuthorCommunityRelationshipRole get role;
  @override
  @JsonKey(name: 'user_results')
  UserResults get userResults;

  /// Create a copy of AuthorCommunityRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorCommunityRelationshipImplCopyWith<_$AuthorCommunityRelationshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}
