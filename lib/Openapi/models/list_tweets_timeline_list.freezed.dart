// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_tweets_timeline_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListTweetsTimelineList _$ListTweetsTimelineListFromJson(
    Map<String, dynamic> json) {
  return _ListTweetsTimelineList.fromJson(json);
}

/// @nodoc
mixin _$ListTweetsTimelineList {
  @JsonKey(name: 'tweets_timeline')
  ListTweetsTimeline get tweetsTimeline => throw _privateConstructorUsedError;

  /// Serializes this ListTweetsTimelineList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListTweetsTimelineList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListTweetsTimelineListCopyWith<ListTweetsTimelineList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTweetsTimelineListCopyWith<$Res> {
  factory $ListTweetsTimelineListCopyWith(ListTweetsTimelineList value,
          $Res Function(ListTweetsTimelineList) then) =
      _$ListTweetsTimelineListCopyWithImpl<$Res, ListTweetsTimelineList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tweets_timeline') ListTweetsTimeline tweetsTimeline});

  $ListTweetsTimelineCopyWith<$Res> get tweetsTimeline;
}

/// @nodoc
class _$ListTweetsTimelineListCopyWithImpl<$Res,
        $Val extends ListTweetsTimelineList>
    implements $ListTweetsTimelineListCopyWith<$Res> {
  _$ListTweetsTimelineListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListTweetsTimelineList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetsTimeline = null,
  }) {
    return _then(_value.copyWith(
      tweetsTimeline: null == tweetsTimeline
          ? _value.tweetsTimeline
          : tweetsTimeline // ignore: cast_nullable_to_non_nullable
              as ListTweetsTimeline,
    ) as $Val);
  }

  /// Create a copy of ListTweetsTimelineList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListTweetsTimelineCopyWith<$Res> get tweetsTimeline {
    return $ListTweetsTimelineCopyWith<$Res>(_value.tweetsTimeline, (value) {
      return _then(_value.copyWith(tweetsTimeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListTweetsTimelineListImplCopyWith<$Res>
    implements $ListTweetsTimelineListCopyWith<$Res> {
  factory _$$ListTweetsTimelineListImplCopyWith(
          _$ListTweetsTimelineListImpl value,
          $Res Function(_$ListTweetsTimelineListImpl) then) =
      __$$ListTweetsTimelineListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tweets_timeline') ListTweetsTimeline tweetsTimeline});

  @override
  $ListTweetsTimelineCopyWith<$Res> get tweetsTimeline;
}

/// @nodoc
class __$$ListTweetsTimelineListImplCopyWithImpl<$Res>
    extends _$ListTweetsTimelineListCopyWithImpl<$Res,
        _$ListTweetsTimelineListImpl>
    implements _$$ListTweetsTimelineListImplCopyWith<$Res> {
  __$$ListTweetsTimelineListImplCopyWithImpl(
      _$ListTweetsTimelineListImpl _value,
      $Res Function(_$ListTweetsTimelineListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListTweetsTimelineList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetsTimeline = null,
  }) {
    return _then(_$ListTweetsTimelineListImpl(
      tweetsTimeline: null == tweetsTimeline
          ? _value.tweetsTimeline
          : tweetsTimeline // ignore: cast_nullable_to_non_nullable
              as ListTweetsTimeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListTweetsTimelineListImpl implements _ListTweetsTimelineList {
  const _$ListTweetsTimelineListImpl(
      {@JsonKey(name: 'tweets_timeline') required this.tweetsTimeline});

  factory _$ListTweetsTimelineListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListTweetsTimelineListImplFromJson(json);

  @override
  @JsonKey(name: 'tweets_timeline')
  final ListTweetsTimeline tweetsTimeline;

  @override
  String toString() {
    return 'ListTweetsTimelineList(tweetsTimeline: $tweetsTimeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTweetsTimelineListImpl &&
            (identical(other.tweetsTimeline, tweetsTimeline) ||
                other.tweetsTimeline == tweetsTimeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tweetsTimeline);

  /// Create a copy of ListTweetsTimelineList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTweetsTimelineListImplCopyWith<_$ListTweetsTimelineListImpl>
      get copyWith => __$$ListTweetsTimelineListImplCopyWithImpl<
          _$ListTweetsTimelineListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTweetsTimelineListImplToJson(
      this,
    );
  }
}

abstract class _ListTweetsTimelineList implements ListTweetsTimelineList {
  const factory _ListTweetsTimelineList(
          {@JsonKey(name: 'tweets_timeline')
          required final ListTweetsTimeline tweetsTimeline}) =
      _$ListTweetsTimelineListImpl;

  factory _ListTweetsTimelineList.fromJson(Map<String, dynamic> json) =
      _$ListTweetsTimelineListImpl.fromJson;

  @override
  @JsonKey(name: 'tweets_timeline')
  ListTweetsTimeline get tweetsTimeline;

  /// Create a copy of ListTweetsTimelineList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListTweetsTimelineListImplCopyWith<_$ListTweetsTimelineListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
