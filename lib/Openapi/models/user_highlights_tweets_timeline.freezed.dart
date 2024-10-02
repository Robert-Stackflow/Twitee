// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_highlights_tweets_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHighlightsTweetsTimeline _$UserHighlightsTweetsTimelineFromJson(
    Map<String, dynamic> json) {
  return _UserHighlightsTweetsTimeline.fromJson(json);
}

/// @nodoc
mixin _$UserHighlightsTweetsTimeline {
  Timeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this UserHighlightsTweetsTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHighlightsTweetsTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHighlightsTweetsTimelineCopyWith<UserHighlightsTweetsTimeline>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHighlightsTweetsTimelineCopyWith<$Res> {
  factory $UserHighlightsTweetsTimelineCopyWith(
          UserHighlightsTweetsTimeline value,
          $Res Function(UserHighlightsTweetsTimeline) then) =
      _$UserHighlightsTweetsTimelineCopyWithImpl<$Res,
          UserHighlightsTweetsTimeline>;
  @useResult
  $Res call({Timeline timeline});

  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$UserHighlightsTweetsTimelineCopyWithImpl<$Res,
        $Val extends UserHighlightsTweetsTimeline>
    implements $UserHighlightsTweetsTimelineCopyWith<$Res> {
  _$UserHighlightsTweetsTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHighlightsTweetsTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_value.copyWith(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ) as $Val);
  }

  /// Create a copy of UserHighlightsTweetsTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineCopyWith<$Res> get timeline {
    return $TimelineCopyWith<$Res>(_value.timeline, (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHighlightsTweetsTimelineImplCopyWith<$Res>
    implements $UserHighlightsTweetsTimelineCopyWith<$Res> {
  factory _$$UserHighlightsTweetsTimelineImplCopyWith(
          _$UserHighlightsTweetsTimelineImpl value,
          $Res Function(_$UserHighlightsTweetsTimelineImpl) then) =
      __$$UserHighlightsTweetsTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timeline timeline});

  @override
  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$UserHighlightsTweetsTimelineImplCopyWithImpl<$Res>
    extends _$UserHighlightsTweetsTimelineCopyWithImpl<$Res,
        _$UserHighlightsTweetsTimelineImpl>
    implements _$$UserHighlightsTweetsTimelineImplCopyWith<$Res> {
  __$$UserHighlightsTweetsTimelineImplCopyWithImpl(
      _$UserHighlightsTweetsTimelineImpl _value,
      $Res Function(_$UserHighlightsTweetsTimelineImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHighlightsTweetsTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_$UserHighlightsTweetsTimelineImpl(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHighlightsTweetsTimelineImpl
    implements _UserHighlightsTweetsTimeline {
  const _$UserHighlightsTweetsTimelineImpl({required this.timeline});

  factory _$UserHighlightsTweetsTimelineImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserHighlightsTweetsTimelineImplFromJson(json);

  @override
  final Timeline timeline;

  @override
  String toString() {
    return 'UserHighlightsTweetsTimeline(timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHighlightsTweetsTimelineImpl &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  /// Create a copy of UserHighlightsTweetsTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHighlightsTweetsTimelineImplCopyWith<
          _$UserHighlightsTweetsTimelineImpl>
      get copyWith => __$$UserHighlightsTweetsTimelineImplCopyWithImpl<
          _$UserHighlightsTweetsTimelineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHighlightsTweetsTimelineImplToJson(
      this,
    );
  }
}

abstract class _UserHighlightsTweetsTimeline
    implements UserHighlightsTweetsTimeline {
  const factory _UserHighlightsTweetsTimeline(
      {required final Timeline timeline}) = _$UserHighlightsTweetsTimelineImpl;

  factory _UserHighlightsTweetsTimeline.fromJson(Map<String, dynamic> json) =
      _$UserHighlightsTweetsTimelineImpl.fromJson;

  @override
  Timeline get timeline;

  /// Create a copy of UserHighlightsTweetsTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHighlightsTweetsTimelineImplCopyWith<
          _$UserHighlightsTweetsTimelineImpl>
      get copyWith => throw _privateConstructorUsedError;
}
