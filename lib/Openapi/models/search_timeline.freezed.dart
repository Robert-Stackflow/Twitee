// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchTimeline _$SearchTimelineFromJson(Map<String, dynamic> json) {
  return _SearchTimeline.fromJson(json);
}

/// @nodoc
mixin _$SearchTimeline {
  Timeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this SearchTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchTimelineCopyWith<SearchTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTimelineCopyWith<$Res> {
  factory $SearchTimelineCopyWith(
          SearchTimeline value, $Res Function(SearchTimeline) then) =
      _$SearchTimelineCopyWithImpl<$Res, SearchTimeline>;
  @useResult
  $Res call({Timeline timeline});

  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$SearchTimelineCopyWithImpl<$Res, $Val extends SearchTimeline>
    implements $SearchTimelineCopyWith<$Res> {
  _$SearchTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchTimeline
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

  /// Create a copy of SearchTimeline
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
abstract class _$$SearchTimelineImplCopyWith<$Res>
    implements $SearchTimelineCopyWith<$Res> {
  factory _$$SearchTimelineImplCopyWith(_$SearchTimelineImpl value,
          $Res Function(_$SearchTimelineImpl) then) =
      __$$SearchTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timeline timeline});

  @override
  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$SearchTimelineImplCopyWithImpl<$Res>
    extends _$SearchTimelineCopyWithImpl<$Res, _$SearchTimelineImpl>
    implements _$$SearchTimelineImplCopyWith<$Res> {
  __$$SearchTimelineImplCopyWithImpl(
      _$SearchTimelineImpl _value, $Res Function(_$SearchTimelineImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_$SearchTimelineImpl(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchTimelineImpl implements _SearchTimeline {
  const _$SearchTimelineImpl({required this.timeline});

  factory _$SearchTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchTimelineImplFromJson(json);

  @override
  final Timeline timeline;

  @override
  String toString() {
    return 'SearchTimeline(timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTimelineImpl &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  /// Create a copy of SearchTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTimelineImplCopyWith<_$SearchTimelineImpl> get copyWith =>
      __$$SearchTimelineImplCopyWithImpl<_$SearchTimelineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchTimelineImplToJson(
      this,
    );
  }
}

abstract class _SearchTimeline implements SearchTimeline {
  const factory _SearchTimeline({required final Timeline timeline}) =
      _$SearchTimelineImpl;

  factory _SearchTimeline.fromJson(Map<String, dynamic> json) =
      _$SearchTimelineImpl.fromJson;

  @override
  Timeline get timeline;

  /// Create a copy of SearchTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTimelineImplCopyWith<_$SearchTimelineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
