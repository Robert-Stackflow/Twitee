// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowTimeline _$FollowTimelineFromJson(Map<String, dynamic> json) {
  return _FollowTimeline.fromJson(json);
}

/// @nodoc
mixin _$FollowTimeline {
  Timeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this FollowTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowTimelineCopyWith<FollowTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowTimelineCopyWith<$Res> {
  factory $FollowTimelineCopyWith(
          FollowTimeline value, $Res Function(FollowTimeline) then) =
      _$FollowTimelineCopyWithImpl<$Res, FollowTimeline>;
  @useResult
  $Res call({Timeline timeline});

  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$FollowTimelineCopyWithImpl<$Res, $Val extends FollowTimeline>
    implements $FollowTimelineCopyWith<$Res> {
  _$FollowTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowTimeline
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

  /// Create a copy of FollowTimeline
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
abstract class _$$FollowTimelineImplCopyWith<$Res>
    implements $FollowTimelineCopyWith<$Res> {
  factory _$$FollowTimelineImplCopyWith(_$FollowTimelineImpl value,
          $Res Function(_$FollowTimelineImpl) then) =
      __$$FollowTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timeline timeline});

  @override
  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$FollowTimelineImplCopyWithImpl<$Res>
    extends _$FollowTimelineCopyWithImpl<$Res, _$FollowTimelineImpl>
    implements _$$FollowTimelineImplCopyWith<$Res> {
  __$$FollowTimelineImplCopyWithImpl(
      _$FollowTimelineImpl _value, $Res Function(_$FollowTimelineImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_$FollowTimelineImpl(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowTimelineImpl implements _FollowTimeline {
  const _$FollowTimelineImpl({required this.timeline});

  factory _$FollowTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowTimelineImplFromJson(json);

  @override
  final Timeline timeline;

  @override
  String toString() {
    return 'FollowTimeline(timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowTimelineImpl &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  /// Create a copy of FollowTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowTimelineImplCopyWith<_$FollowTimelineImpl> get copyWith =>
      __$$FollowTimelineImplCopyWithImpl<_$FollowTimelineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowTimelineImplToJson(
      this,
    );
  }
}

abstract class _FollowTimeline implements FollowTimeline {
  const factory _FollowTimeline({required final Timeline timeline}) =
      _$FollowTimelineImpl;

  factory _FollowTimeline.fromJson(Map<String, dynamic> json) =
      _$FollowTimelineImpl.fromJson;

  @override
  Timeline get timeline;

  /// Create a copy of FollowTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowTimelineImplCopyWith<_$FollowTimelineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
