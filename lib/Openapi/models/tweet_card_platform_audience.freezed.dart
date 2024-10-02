// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_platform_audience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardPlatformAudience _$TweetCardPlatformAudienceFromJson(
    Map<String, dynamic> json) {
  return _TweetCardPlatformAudience.fromJson(json);
}

/// @nodoc
mixin _$TweetCardPlatformAudience {
  TweetCardPlatformAudienceName get name => throw _privateConstructorUsedError;

  /// Serializes this TweetCardPlatformAudience to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardPlatformAudience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardPlatformAudienceCopyWith<TweetCardPlatformAudience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardPlatformAudienceCopyWith<$Res> {
  factory $TweetCardPlatformAudienceCopyWith(TweetCardPlatformAudience value,
          $Res Function(TweetCardPlatformAudience) then) =
      _$TweetCardPlatformAudienceCopyWithImpl<$Res, TweetCardPlatformAudience>;
  @useResult
  $Res call({TweetCardPlatformAudienceName name});
}

/// @nodoc
class _$TweetCardPlatformAudienceCopyWithImpl<$Res,
        $Val extends TweetCardPlatformAudience>
    implements $TweetCardPlatformAudienceCopyWith<$Res> {
  _$TweetCardPlatformAudienceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardPlatformAudience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformAudienceName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetCardPlatformAudienceImplCopyWith<$Res>
    implements $TweetCardPlatformAudienceCopyWith<$Res> {
  factory _$$TweetCardPlatformAudienceImplCopyWith(
          _$TweetCardPlatformAudienceImpl value,
          $Res Function(_$TweetCardPlatformAudienceImpl) then) =
      __$$TweetCardPlatformAudienceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetCardPlatformAudienceName name});
}

/// @nodoc
class __$$TweetCardPlatformAudienceImplCopyWithImpl<$Res>
    extends _$TweetCardPlatformAudienceCopyWithImpl<$Res,
        _$TweetCardPlatformAudienceImpl>
    implements _$$TweetCardPlatformAudienceImplCopyWith<$Res> {
  __$$TweetCardPlatformAudienceImplCopyWithImpl(
      _$TweetCardPlatformAudienceImpl _value,
      $Res Function(_$TweetCardPlatformAudienceImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardPlatformAudience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TweetCardPlatformAudienceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformAudienceName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardPlatformAudienceImpl implements _TweetCardPlatformAudience {
  const _$TweetCardPlatformAudienceImpl({required this.name});

  factory _$TweetCardPlatformAudienceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetCardPlatformAudienceImplFromJson(json);

  @override
  final TweetCardPlatformAudienceName name;

  @override
  String toString() {
    return 'TweetCardPlatformAudience(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardPlatformAudienceImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of TweetCardPlatformAudience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardPlatformAudienceImplCopyWith<_$TweetCardPlatformAudienceImpl>
      get copyWith => __$$TweetCardPlatformAudienceImplCopyWithImpl<
          _$TweetCardPlatformAudienceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardPlatformAudienceImplToJson(
      this,
    );
  }
}

abstract class _TweetCardPlatformAudience implements TweetCardPlatformAudience {
  const factory _TweetCardPlatformAudience(
          {required final TweetCardPlatformAudienceName name}) =
      _$TweetCardPlatformAudienceImpl;

  factory _TweetCardPlatformAudience.fromJson(Map<String, dynamic> json) =
      _$TweetCardPlatformAudienceImpl.fromJson;

  @override
  TweetCardPlatformAudienceName get name;

  /// Create a copy of TweetCardPlatformAudience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardPlatformAudienceImplCopyWith<_$TweetCardPlatformAudienceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
