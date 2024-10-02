// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_legacy_scopes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetLegacyScopes _$TweetLegacyScopesFromJson(Map<String, dynamic> json) {
  return _TweetLegacyScopes.fromJson(json);
}

/// @nodoc
mixin _$TweetLegacyScopes {
  bool get followers => throw _privateConstructorUsedError;

  /// Serializes this TweetLegacyScopes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetLegacyScopes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetLegacyScopesCopyWith<TweetLegacyScopes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetLegacyScopesCopyWith<$Res> {
  factory $TweetLegacyScopesCopyWith(
          TweetLegacyScopes value, $Res Function(TweetLegacyScopes) then) =
      _$TweetLegacyScopesCopyWithImpl<$Res, TweetLegacyScopes>;
  @useResult
  $Res call({bool followers});
}

/// @nodoc
class _$TweetLegacyScopesCopyWithImpl<$Res, $Val extends TweetLegacyScopes>
    implements $TweetLegacyScopesCopyWith<$Res> {
  _$TweetLegacyScopesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetLegacyScopes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followers = null,
  }) {
    return _then(_value.copyWith(
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetLegacyScopesImplCopyWith<$Res>
    implements $TweetLegacyScopesCopyWith<$Res> {
  factory _$$TweetLegacyScopesImplCopyWith(_$TweetLegacyScopesImpl value,
          $Res Function(_$TweetLegacyScopesImpl) then) =
      __$$TweetLegacyScopesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool followers});
}

/// @nodoc
class __$$TweetLegacyScopesImplCopyWithImpl<$Res>
    extends _$TweetLegacyScopesCopyWithImpl<$Res, _$TweetLegacyScopesImpl>
    implements _$$TweetLegacyScopesImplCopyWith<$Res> {
  __$$TweetLegacyScopesImplCopyWithImpl(_$TweetLegacyScopesImpl _value,
      $Res Function(_$TweetLegacyScopesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetLegacyScopes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followers = null,
  }) {
    return _then(_$TweetLegacyScopesImpl(
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetLegacyScopesImpl implements _TweetLegacyScopes {
  const _$TweetLegacyScopesImpl({required this.followers});

  factory _$TweetLegacyScopesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetLegacyScopesImplFromJson(json);

  @override
  final bool followers;

  @override
  String toString() {
    return 'TweetLegacyScopes(followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetLegacyScopesImpl &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, followers);

  /// Create a copy of TweetLegacyScopes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetLegacyScopesImplCopyWith<_$TweetLegacyScopesImpl> get copyWith =>
      __$$TweetLegacyScopesImplCopyWithImpl<_$TweetLegacyScopesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetLegacyScopesImplToJson(
      this,
    );
  }
}

abstract class _TweetLegacyScopes implements TweetLegacyScopes {
  const factory _TweetLegacyScopes({required final bool followers}) =
      _$TweetLegacyScopesImpl;

  factory _TweetLegacyScopes.fromJson(Map<String, dynamic> json) =
      _$TweetLegacyScopesImpl.fromJson;

  @override
  bool get followers;

  /// Create a copy of TweetLegacyScopes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetLegacyScopesImplCopyWith<_$TweetLegacyScopesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
