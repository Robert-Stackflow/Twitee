// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_highlights_tweets_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHighlightsTweetsResult _$UserHighlightsTweetsResultFromJson(
    Map<String, dynamic> json) {
  return _UserHighlightsTweetsResult.fromJson(json);
}

/// @nodoc
mixin _$UserHighlightsTweetsResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  UserHighlightsTweetsTimeline get timeline =>
      throw _privateConstructorUsedError;

  /// Serializes this UserHighlightsTweetsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHighlightsTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHighlightsTweetsResultCopyWith<UserHighlightsTweetsResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHighlightsTweetsResultCopyWith<$Res> {
  factory $UserHighlightsTweetsResultCopyWith(UserHighlightsTweetsResult value,
          $Res Function(UserHighlightsTweetsResult) then) =
      _$UserHighlightsTweetsResultCopyWithImpl<$Res,
          UserHighlightsTweetsResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      UserHighlightsTweetsTimeline timeline});

  $UserHighlightsTweetsTimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$UserHighlightsTweetsResultCopyWithImpl<$Res,
        $Val extends UserHighlightsTweetsResult>
    implements $UserHighlightsTweetsResultCopyWith<$Res> {
  _$UserHighlightsTweetsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHighlightsTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? timeline = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as UserHighlightsTweetsTimeline,
    ) as $Val);
  }

  /// Create a copy of UserHighlightsTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHighlightsTweetsTimelineCopyWith<$Res> get timeline {
    return $UserHighlightsTweetsTimelineCopyWith<$Res>(_value.timeline,
        (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHighlightsTweetsResultImplCopyWith<$Res>
    implements $UserHighlightsTweetsResultCopyWith<$Res> {
  factory _$$UserHighlightsTweetsResultImplCopyWith(
          _$UserHighlightsTweetsResultImpl value,
          $Res Function(_$UserHighlightsTweetsResultImpl) then) =
      __$$UserHighlightsTweetsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      UserHighlightsTweetsTimeline timeline});

  @override
  $UserHighlightsTweetsTimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$UserHighlightsTweetsResultImplCopyWithImpl<$Res>
    extends _$UserHighlightsTweetsResultCopyWithImpl<$Res,
        _$UserHighlightsTweetsResultImpl>
    implements _$$UserHighlightsTweetsResultImplCopyWith<$Res> {
  __$$UserHighlightsTweetsResultImplCopyWithImpl(
      _$UserHighlightsTweetsResultImpl _value,
      $Res Function(_$UserHighlightsTweetsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHighlightsTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? timeline = null,
  }) {
    return _then(_$UserHighlightsTweetsResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as UserHighlightsTweetsTimeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHighlightsTweetsResultImpl implements _UserHighlightsTweetsResult {
  const _$UserHighlightsTweetsResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.timeline});

  factory _$UserHighlightsTweetsResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserHighlightsTweetsResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final UserHighlightsTweetsTimeline timeline;

  @override
  String toString() {
    return 'UserHighlightsTweetsResult(privateTypename: $privateTypename, timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHighlightsTweetsResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, timeline);

  /// Create a copy of UserHighlightsTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHighlightsTweetsResultImplCopyWith<_$UserHighlightsTweetsResultImpl>
      get copyWith => __$$UserHighlightsTweetsResultImplCopyWithImpl<
          _$UserHighlightsTweetsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHighlightsTweetsResultImplToJson(
      this,
    );
  }
}

abstract class _UserHighlightsTweetsResult
    implements UserHighlightsTweetsResult {
  const factory _UserHighlightsTweetsResult(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final UserHighlightsTweetsTimeline timeline}) =
      _$UserHighlightsTweetsResultImpl;

  factory _UserHighlightsTweetsResult.fromJson(Map<String, dynamic> json) =
      _$UserHighlightsTweetsResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  UserHighlightsTweetsTimeline get timeline;

  /// Create a copy of UserHighlightsTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHighlightsTweetsResultImplCopyWith<_$UserHighlightsTweetsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
