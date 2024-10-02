// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarksResponseData _$BookmarksResponseDataFromJson(
    Map<String, dynamic> json) {
  return _BookmarksResponseData.fromJson(json);
}

/// @nodoc
mixin _$BookmarksResponseData {
  @JsonKey(name: 'bookmark_timeline_v2')
  BookmarksTimeline get bookmarkTimelineV2 =>
      throw _privateConstructorUsedError;

  /// Serializes this BookmarksResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarksResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarksResponseDataCopyWith<BookmarksResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksResponseDataCopyWith<$Res> {
  factory $BookmarksResponseDataCopyWith(BookmarksResponseData value,
          $Res Function(BookmarksResponseData) then) =
      _$BookmarksResponseDataCopyWithImpl<$Res, BookmarksResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bookmark_timeline_v2')
      BookmarksTimeline bookmarkTimelineV2});

  $BookmarksTimelineCopyWith<$Res> get bookmarkTimelineV2;
}

/// @nodoc
class _$BookmarksResponseDataCopyWithImpl<$Res,
        $Val extends BookmarksResponseData>
    implements $BookmarksResponseDataCopyWith<$Res> {
  _$BookmarksResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarksResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkTimelineV2 = null,
  }) {
    return _then(_value.copyWith(
      bookmarkTimelineV2: null == bookmarkTimelineV2
          ? _value.bookmarkTimelineV2
          : bookmarkTimelineV2 // ignore: cast_nullable_to_non_nullable
              as BookmarksTimeline,
    ) as $Val);
  }

  /// Create a copy of BookmarksResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookmarksTimelineCopyWith<$Res> get bookmarkTimelineV2 {
    return $BookmarksTimelineCopyWith<$Res>(_value.bookmarkTimelineV2, (value) {
      return _then(_value.copyWith(bookmarkTimelineV2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarksResponseDataImplCopyWith<$Res>
    implements $BookmarksResponseDataCopyWith<$Res> {
  factory _$$BookmarksResponseDataImplCopyWith(
          _$BookmarksResponseDataImpl value,
          $Res Function(_$BookmarksResponseDataImpl) then) =
      __$$BookmarksResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bookmark_timeline_v2')
      BookmarksTimeline bookmarkTimelineV2});

  @override
  $BookmarksTimelineCopyWith<$Res> get bookmarkTimelineV2;
}

/// @nodoc
class __$$BookmarksResponseDataImplCopyWithImpl<$Res>
    extends _$BookmarksResponseDataCopyWithImpl<$Res,
        _$BookmarksResponseDataImpl>
    implements _$$BookmarksResponseDataImplCopyWith<$Res> {
  __$$BookmarksResponseDataImplCopyWithImpl(_$BookmarksResponseDataImpl _value,
      $Res Function(_$BookmarksResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkTimelineV2 = null,
  }) {
    return _then(_$BookmarksResponseDataImpl(
      bookmarkTimelineV2: null == bookmarkTimelineV2
          ? _value.bookmarkTimelineV2
          : bookmarkTimelineV2 // ignore: cast_nullable_to_non_nullable
              as BookmarksTimeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksResponseDataImpl implements _BookmarksResponseData {
  const _$BookmarksResponseDataImpl(
      {@JsonKey(name: 'bookmark_timeline_v2')
      required this.bookmarkTimelineV2});

  factory _$BookmarksResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'bookmark_timeline_v2')
  final BookmarksTimeline bookmarkTimelineV2;

  @override
  String toString() {
    return 'BookmarksResponseData(bookmarkTimelineV2: $bookmarkTimelineV2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksResponseDataImpl &&
            (identical(other.bookmarkTimelineV2, bookmarkTimelineV2) ||
                other.bookmarkTimelineV2 == bookmarkTimelineV2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookmarkTimelineV2);

  /// Create a copy of BookmarksResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksResponseDataImplCopyWith<_$BookmarksResponseDataImpl>
      get copyWith => __$$BookmarksResponseDataImplCopyWithImpl<
          _$BookmarksResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksResponseDataImplToJson(
      this,
    );
  }
}

abstract class _BookmarksResponseData implements BookmarksResponseData {
  const factory _BookmarksResponseData(
          {@JsonKey(name: 'bookmark_timeline_v2')
          required final BookmarksTimeline bookmarkTimelineV2}) =
      _$BookmarksResponseDataImpl;

  factory _BookmarksResponseData.fromJson(Map<String, dynamic> json) =
      _$BookmarksResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'bookmark_timeline_v2')
  BookmarksTimeline get bookmarkTimelineV2;

  /// Create a copy of BookmarksResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksResponseDataImplCopyWith<_$BookmarksResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
