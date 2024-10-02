// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_highlights_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHighlightsInfo _$UserHighlightsInfoFromJson(Map<String, dynamic> json) {
  return _UserHighlightsInfo.fromJson(json);
}

/// @nodoc
mixin _$UserHighlightsInfo {
  @JsonKey(name: 'can_highlight_tweets')
  bool get canHighlightTweets => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlighted_tweets')
  String get highlightedTweets => throw _privateConstructorUsedError;

  /// Serializes this UserHighlightsInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHighlightsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHighlightsInfoCopyWith<UserHighlightsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHighlightsInfoCopyWith<$Res> {
  factory $UserHighlightsInfoCopyWith(
          UserHighlightsInfo value, $Res Function(UserHighlightsInfo) then) =
      _$UserHighlightsInfoCopyWithImpl<$Res, UserHighlightsInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'can_highlight_tweets') bool canHighlightTweets,
      @JsonKey(name: 'highlighted_tweets') String highlightedTweets});
}

/// @nodoc
class _$UserHighlightsInfoCopyWithImpl<$Res, $Val extends UserHighlightsInfo>
    implements $UserHighlightsInfoCopyWith<$Res> {
  _$UserHighlightsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHighlightsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canHighlightTweets = null,
    Object? highlightedTweets = null,
  }) {
    return _then(_value.copyWith(
      canHighlightTweets: null == canHighlightTweets
          ? _value.canHighlightTweets
          : canHighlightTweets // ignore: cast_nullable_to_non_nullable
              as bool,
      highlightedTweets: null == highlightedTweets
          ? _value.highlightedTweets
          : highlightedTweets // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHighlightsInfoImplCopyWith<$Res>
    implements $UserHighlightsInfoCopyWith<$Res> {
  factory _$$UserHighlightsInfoImplCopyWith(_$UserHighlightsInfoImpl value,
          $Res Function(_$UserHighlightsInfoImpl) then) =
      __$$UserHighlightsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'can_highlight_tweets') bool canHighlightTweets,
      @JsonKey(name: 'highlighted_tweets') String highlightedTweets});
}

/// @nodoc
class __$$UserHighlightsInfoImplCopyWithImpl<$Res>
    extends _$UserHighlightsInfoCopyWithImpl<$Res, _$UserHighlightsInfoImpl>
    implements _$$UserHighlightsInfoImplCopyWith<$Res> {
  __$$UserHighlightsInfoImplCopyWithImpl(_$UserHighlightsInfoImpl _value,
      $Res Function(_$UserHighlightsInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHighlightsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canHighlightTweets = null,
    Object? highlightedTweets = null,
  }) {
    return _then(_$UserHighlightsInfoImpl(
      canHighlightTweets: null == canHighlightTweets
          ? _value.canHighlightTweets
          : canHighlightTweets // ignore: cast_nullable_to_non_nullable
              as bool,
      highlightedTweets: null == highlightedTweets
          ? _value.highlightedTweets
          : highlightedTweets // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHighlightsInfoImpl implements _UserHighlightsInfo {
  const _$UserHighlightsInfoImpl(
      {@JsonKey(name: 'can_highlight_tweets') required this.canHighlightTweets,
      @JsonKey(name: 'highlighted_tweets') required this.highlightedTweets});

  factory _$UserHighlightsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHighlightsInfoImplFromJson(json);

  @override
  @JsonKey(name: 'can_highlight_tweets')
  final bool canHighlightTweets;
  @override
  @JsonKey(name: 'highlighted_tweets')
  final String highlightedTweets;

  @override
  String toString() {
    return 'UserHighlightsInfo(canHighlightTweets: $canHighlightTweets, highlightedTweets: $highlightedTweets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHighlightsInfoImpl &&
            (identical(other.canHighlightTweets, canHighlightTweets) ||
                other.canHighlightTweets == canHighlightTweets) &&
            (identical(other.highlightedTweets, highlightedTweets) ||
                other.highlightedTweets == highlightedTweets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, canHighlightTweets, highlightedTweets);

  /// Create a copy of UserHighlightsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHighlightsInfoImplCopyWith<_$UserHighlightsInfoImpl> get copyWith =>
      __$$UserHighlightsInfoImplCopyWithImpl<_$UserHighlightsInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHighlightsInfoImplToJson(
      this,
    );
  }
}

abstract class _UserHighlightsInfo implements UserHighlightsInfo {
  const factory _UserHighlightsInfo(
      {@JsonKey(name: 'can_highlight_tweets')
      required final bool canHighlightTweets,
      @JsonKey(name: 'highlighted_tweets')
      required final String highlightedTweets}) = _$UserHighlightsInfoImpl;

  factory _UserHighlightsInfo.fromJson(Map<String, dynamic> json) =
      _$UserHighlightsInfoImpl.fromJson;

  @override
  @JsonKey(name: 'can_highlight_tweets')
  bool get canHighlightTweets;
  @override
  @JsonKey(name: 'highlighted_tweets')
  String get highlightedTweets;

  /// Create a copy of UserHighlightsInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHighlightsInfoImplCopyWith<_$UserHighlightsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
