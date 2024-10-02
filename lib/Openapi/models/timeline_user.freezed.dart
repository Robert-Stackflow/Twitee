// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineUser _$TimelineUserFromJson(Map<String, dynamic> json) {
  return _TimelineUser.fromJson(json);
}

/// @nodoc
mixin _$TimelineUser {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  ContentItemType get itemType => throw _privateConstructorUsedError;
  SocialContextUnion get socialContext => throw _privateConstructorUsedError;
  TimelineUserUserDisplayType get userDisplayType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_results')
  UserResults get userResults => throw _privateConstructorUsedError;

  /// Serializes this TimelineUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineUserCopyWith<TimelineUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineUserCopyWith<$Res> {
  factory $TimelineUserCopyWith(
          TimelineUser value, $Res Function(TimelineUser) then) =
      _$TimelineUserCopyWithImpl<$Res, TimelineUser>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      ContentItemType itemType,
      SocialContextUnion socialContext,
      TimelineUserUserDisplayType userDisplayType,
      @JsonKey(name: 'user_results') UserResults userResults});

  $SocialContextUnionCopyWith<$Res> get socialContext;
  $UserResultsCopyWith<$Res> get userResults;
}

/// @nodoc
class _$TimelineUserCopyWithImpl<$Res, $Val extends TimelineUser>
    implements $TimelineUserCopyWith<$Res> {
  _$TimelineUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? itemType = null,
    Object? socialContext = null,
    Object? userDisplayType = null,
    Object? userResults = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as ContentItemType,
      socialContext: null == socialContext
          ? _value.socialContext
          : socialContext // ignore: cast_nullable_to_non_nullable
              as SocialContextUnion,
      userDisplayType: null == userDisplayType
          ? _value.userDisplayType
          : userDisplayType // ignore: cast_nullable_to_non_nullable
              as TimelineUserUserDisplayType,
      userResults: null == userResults
          ? _value.userResults
          : userResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
    ) as $Val);
  }

  /// Create a copy of TimelineUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialContextUnionCopyWith<$Res> get socialContext {
    return $SocialContextUnionCopyWith<$Res>(_value.socialContext, (value) {
      return _then(_value.copyWith(socialContext: value) as $Val);
    });
  }

  /// Create a copy of TimelineUser
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
abstract class _$$TimelineUserImplCopyWith<$Res>
    implements $TimelineUserCopyWith<$Res> {
  factory _$$TimelineUserImplCopyWith(
          _$TimelineUserImpl value, $Res Function(_$TimelineUserImpl) then) =
      __$$TimelineUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      ContentItemType itemType,
      SocialContextUnion socialContext,
      TimelineUserUserDisplayType userDisplayType,
      @JsonKey(name: 'user_results') UserResults userResults});

  @override
  $SocialContextUnionCopyWith<$Res> get socialContext;
  @override
  $UserResultsCopyWith<$Res> get userResults;
}

/// @nodoc
class __$$TimelineUserImplCopyWithImpl<$Res>
    extends _$TimelineUserCopyWithImpl<$Res, _$TimelineUserImpl>
    implements _$$TimelineUserImplCopyWith<$Res> {
  __$$TimelineUserImplCopyWithImpl(
      _$TimelineUserImpl _value, $Res Function(_$TimelineUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? itemType = null,
    Object? socialContext = null,
    Object? userDisplayType = null,
    Object? userResults = null,
  }) {
    return _then(_$TimelineUserImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as ContentItemType,
      socialContext: null == socialContext
          ? _value.socialContext
          : socialContext // ignore: cast_nullable_to_non_nullable
              as SocialContextUnion,
      userDisplayType: null == userDisplayType
          ? _value.userDisplayType
          : userDisplayType // ignore: cast_nullable_to_non_nullable
              as TimelineUserUserDisplayType,
      userResults: null == userResults
          ? _value.userResults
          : userResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineUserImpl implements _TimelineUser {
  const _$TimelineUserImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.itemType,
      required this.socialContext,
      required this.userDisplayType,
      @JsonKey(name: 'user_results') required this.userResults});

  factory _$TimelineUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineUserImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final ContentItemType itemType;
  @override
  final SocialContextUnion socialContext;
  @override
  final TimelineUserUserDisplayType userDisplayType;
  @override
  @JsonKey(name: 'user_results')
  final UserResults userResults;

  @override
  String toString() {
    return 'TimelineUser(privateTypename: $privateTypename, itemType: $itemType, socialContext: $socialContext, userDisplayType: $userDisplayType, userResults: $userResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineUserImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.socialContext, socialContext) ||
                other.socialContext == socialContext) &&
            (identical(other.userDisplayType, userDisplayType) ||
                other.userDisplayType == userDisplayType) &&
            (identical(other.userResults, userResults) ||
                other.userResults == userResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, itemType,
      socialContext, userDisplayType, userResults);

  /// Create a copy of TimelineUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineUserImplCopyWith<_$TimelineUserImpl> get copyWith =>
      __$$TimelineUserImplCopyWithImpl<_$TimelineUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineUserImplToJson(
      this,
    );
  }
}

abstract class _TimelineUser implements TimelineUser {
  const factory _TimelineUser(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final ContentItemType itemType,
      required final SocialContextUnion socialContext,
      required final TimelineUserUserDisplayType userDisplayType,
      @JsonKey(name: 'user_results')
      required final UserResults userResults}) = _$TimelineUserImpl;

  factory _TimelineUser.fromJson(Map<String, dynamic> json) =
      _$TimelineUserImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  ContentItemType get itemType;
  @override
  SocialContextUnion get socialContext;
  @override
  TimelineUserUserDisplayType get userDisplayType;
  @override
  @JsonKey(name: 'user_results')
  UserResults get userResults;

  /// Create a copy of TimelineUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineUserImplCopyWith<_$TimelineUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
