// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarksTimeline _$BookmarksTimelineFromJson(Map<String, dynamic> json) {
  return _BookmarksTimeline.fromJson(json);
}

/// @nodoc
mixin _$BookmarksTimeline {
  Timeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this BookmarksTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarksTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarksTimelineCopyWith<BookmarksTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksTimelineCopyWith<$Res> {
  factory $BookmarksTimelineCopyWith(
          BookmarksTimeline value, $Res Function(BookmarksTimeline) then) =
      _$BookmarksTimelineCopyWithImpl<$Res, BookmarksTimeline>;
  @useResult
  $Res call({Timeline timeline});

  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$BookmarksTimelineCopyWithImpl<$Res, $Val extends BookmarksTimeline>
    implements $BookmarksTimelineCopyWith<$Res> {
  _$BookmarksTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarksTimeline
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

  /// Create a copy of BookmarksTimeline
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
abstract class _$$BookmarksTimelineImplCopyWith<$Res>
    implements $BookmarksTimelineCopyWith<$Res> {
  factory _$$BookmarksTimelineImplCopyWith(_$BookmarksTimelineImpl value,
          $Res Function(_$BookmarksTimelineImpl) then) =
      __$$BookmarksTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timeline timeline});

  @override
  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$BookmarksTimelineImplCopyWithImpl<$Res>
    extends _$BookmarksTimelineCopyWithImpl<$Res, _$BookmarksTimelineImpl>
    implements _$$BookmarksTimelineImplCopyWith<$Res> {
  __$$BookmarksTimelineImplCopyWithImpl(_$BookmarksTimelineImpl _value,
      $Res Function(_$BookmarksTimelineImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_$BookmarksTimelineImpl(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksTimelineImpl implements _BookmarksTimeline {
  const _$BookmarksTimelineImpl({required this.timeline});

  factory _$BookmarksTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksTimelineImplFromJson(json);

  @override
  final Timeline timeline;

  @override
  String toString() {
    return 'BookmarksTimeline(timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksTimelineImpl &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  /// Create a copy of BookmarksTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksTimelineImplCopyWith<_$BookmarksTimelineImpl> get copyWith =>
      __$$BookmarksTimelineImplCopyWithImpl<_$BookmarksTimelineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksTimelineImplToJson(
      this,
    );
  }
}

abstract class _BookmarksTimeline implements BookmarksTimeline {
  const factory _BookmarksTimeline({required final Timeline timeline}) =
      _$BookmarksTimelineImpl;

  factory _BookmarksTimeline.fromJson(Map<String, dynamic> json) =
      _$BookmarksTimelineImpl.fromJson;

  @override
  Timeline get timeline;

  /// Create a copy of BookmarksTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksTimelineImplCopyWith<_$BookmarksTimelineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
