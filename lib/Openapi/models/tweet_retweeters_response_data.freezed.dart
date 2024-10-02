// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_retweeters_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetRetweetersResponseData _$TweetRetweetersResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TweetRetweetersResponseData.fromJson(json);
}

/// @nodoc
mixin _$TweetRetweetersResponseData {
  @JsonKey(name: 'retweeters_timeline')
  TimelineV get retweetersTimeline => throw _privateConstructorUsedError;

  /// Serializes this TweetRetweetersResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetRetweetersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetRetweetersResponseDataCopyWith<TweetRetweetersResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetRetweetersResponseDataCopyWith<$Res> {
  factory $TweetRetweetersResponseDataCopyWith(
          TweetRetweetersResponseData value,
          $Res Function(TweetRetweetersResponseData) then) =
      _$TweetRetweetersResponseDataCopyWithImpl<$Res,
          TweetRetweetersResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'retweeters_timeline') TimelineV retweetersTimeline});

  $TimelineVCopyWith<$Res> get retweetersTimeline;
}

/// @nodoc
class _$TweetRetweetersResponseDataCopyWithImpl<$Res,
        $Val extends TweetRetweetersResponseData>
    implements $TweetRetweetersResponseDataCopyWith<$Res> {
  _$TweetRetweetersResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetRetweetersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetersTimeline = null,
  }) {
    return _then(_value.copyWith(
      retweetersTimeline: null == retweetersTimeline
          ? _value.retweetersTimeline
          : retweetersTimeline // ignore: cast_nullable_to_non_nullable
              as TimelineV,
    ) as $Val);
  }

  /// Create a copy of TweetRetweetersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineVCopyWith<$Res> get retweetersTimeline {
    return $TimelineVCopyWith<$Res>(_value.retweetersTimeline, (value) {
      return _then(_value.copyWith(retweetersTimeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetRetweetersResponseDataImplCopyWith<$Res>
    implements $TweetRetweetersResponseDataCopyWith<$Res> {
  factory _$$TweetRetweetersResponseDataImplCopyWith(
          _$TweetRetweetersResponseDataImpl value,
          $Res Function(_$TweetRetweetersResponseDataImpl) then) =
      __$$TweetRetweetersResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'retweeters_timeline') TimelineV retweetersTimeline});

  @override
  $TimelineVCopyWith<$Res> get retweetersTimeline;
}

/// @nodoc
class __$$TweetRetweetersResponseDataImplCopyWithImpl<$Res>
    extends _$TweetRetweetersResponseDataCopyWithImpl<$Res,
        _$TweetRetweetersResponseDataImpl>
    implements _$$TweetRetweetersResponseDataImplCopyWith<$Res> {
  __$$TweetRetweetersResponseDataImplCopyWithImpl(
      _$TweetRetweetersResponseDataImpl _value,
      $Res Function(_$TweetRetweetersResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetRetweetersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetersTimeline = null,
  }) {
    return _then(_$TweetRetweetersResponseDataImpl(
      retweetersTimeline: null == retweetersTimeline
          ? _value.retweetersTimeline
          : retweetersTimeline // ignore: cast_nullable_to_non_nullable
              as TimelineV,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetRetweetersResponseDataImpl
    implements _TweetRetweetersResponseData {
  const _$TweetRetweetersResponseDataImpl(
      {@JsonKey(name: 'retweeters_timeline') required this.retweetersTimeline});

  factory _$TweetRetweetersResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetRetweetersResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'retweeters_timeline')
  final TimelineV retweetersTimeline;

  @override
  String toString() {
    return 'TweetRetweetersResponseData(retweetersTimeline: $retweetersTimeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetRetweetersResponseDataImpl &&
            (identical(other.retweetersTimeline, retweetersTimeline) ||
                other.retweetersTimeline == retweetersTimeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, retweetersTimeline);

  /// Create a copy of TweetRetweetersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetRetweetersResponseDataImplCopyWith<_$TweetRetweetersResponseDataImpl>
      get copyWith => __$$TweetRetweetersResponseDataImplCopyWithImpl<
          _$TweetRetweetersResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetRetweetersResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TweetRetweetersResponseData
    implements TweetRetweetersResponseData {
  const factory _TweetRetweetersResponseData(
          {@JsonKey(name: 'retweeters_timeline')
          required final TimelineV retweetersTimeline}) =
      _$TweetRetweetersResponseDataImpl;

  factory _TweetRetweetersResponseData.fromJson(Map<String, dynamic> json) =
      _$TweetRetweetersResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'retweeters_timeline')
  TimelineV get retweetersTimeline;

  /// Create a copy of TweetRetweetersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetRetweetersResponseDataImplCopyWith<_$TweetRetweetersResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
