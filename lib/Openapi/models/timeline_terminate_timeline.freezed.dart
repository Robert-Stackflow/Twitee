// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_terminate_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineTerminateTimeline _$TimelineTerminateTimelineFromJson(
    Map<String, dynamic> json) {
  return _TimelineTerminateTimeline.fromJson(json);
}

/// @nodoc
mixin _$TimelineTerminateTimeline {
  TimelineTerminateTimelineDirection get direction =>
      throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineTerminateTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineTerminateTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineTerminateTimelineCopyWith<TimelineTerminateTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineTerminateTimelineCopyWith<$Res> {
  factory $TimelineTerminateTimelineCopyWith(TimelineTerminateTimeline value,
          $Res Function(TimelineTerminateTimeline) then) =
      _$TimelineTerminateTimelineCopyWithImpl<$Res, TimelineTerminateTimeline>;
  @useResult
  $Res call(
      {TimelineTerminateTimelineDirection direction, InstructionType type});
}

/// @nodoc
class _$TimelineTerminateTimelineCopyWithImpl<$Res,
        $Val extends TimelineTerminateTimeline>
    implements $TimelineTerminateTimelineCopyWith<$Res> {
  _$TimelineTerminateTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineTerminateTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as TimelineTerminateTimelineDirection,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineTerminateTimelineImplCopyWith<$Res>
    implements $TimelineTerminateTimelineCopyWith<$Res> {
  factory _$$TimelineTerminateTimelineImplCopyWith(
          _$TimelineTerminateTimelineImpl value,
          $Res Function(_$TimelineTerminateTimelineImpl) then) =
      __$$TimelineTerminateTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimelineTerminateTimelineDirection direction, InstructionType type});
}

/// @nodoc
class __$$TimelineTerminateTimelineImplCopyWithImpl<$Res>
    extends _$TimelineTerminateTimelineCopyWithImpl<$Res,
        _$TimelineTerminateTimelineImpl>
    implements _$$TimelineTerminateTimelineImplCopyWith<$Res> {
  __$$TimelineTerminateTimelineImplCopyWithImpl(
      _$TimelineTerminateTimelineImpl _value,
      $Res Function(_$TimelineTerminateTimelineImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineTerminateTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? type = null,
  }) {
    return _then(_$TimelineTerminateTimelineImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as TimelineTerminateTimelineDirection,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineTerminateTimelineImpl implements _TimelineTerminateTimeline {
  const _$TimelineTerminateTimelineImpl(
      {required this.direction, required this.type});

  factory _$TimelineTerminateTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineTerminateTimelineImplFromJson(json);

  @override
  final TimelineTerminateTimelineDirection direction;
  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelineTerminateTimeline(direction: $direction, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineTerminateTimelineImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction, type);

  /// Create a copy of TimelineTerminateTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineTerminateTimelineImplCopyWith<_$TimelineTerminateTimelineImpl>
      get copyWith => __$$TimelineTerminateTimelineImplCopyWithImpl<
          _$TimelineTerminateTimelineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineTerminateTimelineImplToJson(
      this,
    );
  }
}

abstract class _TimelineTerminateTimeline implements TimelineTerminateTimeline {
  const factory _TimelineTerminateTimeline(
      {required final TimelineTerminateTimelineDirection direction,
      required final InstructionType type}) = _$TimelineTerminateTimelineImpl;

  factory _TimelineTerminateTimeline.fromJson(Map<String, dynamic> json) =
      _$TimelineTerminateTimelineImpl.fromJson;

  @override
  TimelineTerminateTimelineDirection get direction;
  @override
  InstructionType get type;

  /// Create a copy of TimelineTerminateTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineTerminateTimelineImplCopyWith<_$TimelineTerminateTimelineImpl>
      get copyWith => throw _privateConstructorUsedError;
}
