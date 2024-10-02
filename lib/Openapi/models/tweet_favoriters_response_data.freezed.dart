// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_favoriters_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetFavoritersResponseData _$TweetFavoritersResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TweetFavoritersResponseData.fromJson(json);
}

/// @nodoc
mixin _$TweetFavoritersResponseData {
  @JsonKey(name: 'favoriters_timeline')
  TimelineV get favoritersTimeline => throw _privateConstructorUsedError;

  /// Serializes this TweetFavoritersResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetFavoritersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetFavoritersResponseDataCopyWith<TweetFavoritersResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetFavoritersResponseDataCopyWith<$Res> {
  factory $TweetFavoritersResponseDataCopyWith(
          TweetFavoritersResponseData value,
          $Res Function(TweetFavoritersResponseData) then) =
      _$TweetFavoritersResponseDataCopyWithImpl<$Res,
          TweetFavoritersResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'favoriters_timeline') TimelineV favoritersTimeline});

  $TimelineVCopyWith<$Res> get favoritersTimeline;
}

/// @nodoc
class _$TweetFavoritersResponseDataCopyWithImpl<$Res,
        $Val extends TweetFavoritersResponseData>
    implements $TweetFavoritersResponseDataCopyWith<$Res> {
  _$TweetFavoritersResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetFavoritersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritersTimeline = null,
  }) {
    return _then(_value.copyWith(
      favoritersTimeline: null == favoritersTimeline
          ? _value.favoritersTimeline
          : favoritersTimeline // ignore: cast_nullable_to_non_nullable
              as TimelineV,
    ) as $Val);
  }

  /// Create a copy of TweetFavoritersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineVCopyWith<$Res> get favoritersTimeline {
    return $TimelineVCopyWith<$Res>(_value.favoritersTimeline, (value) {
      return _then(_value.copyWith(favoritersTimeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetFavoritersResponseDataImplCopyWith<$Res>
    implements $TweetFavoritersResponseDataCopyWith<$Res> {
  factory _$$TweetFavoritersResponseDataImplCopyWith(
          _$TweetFavoritersResponseDataImpl value,
          $Res Function(_$TweetFavoritersResponseDataImpl) then) =
      __$$TweetFavoritersResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'favoriters_timeline') TimelineV favoritersTimeline});

  @override
  $TimelineVCopyWith<$Res> get favoritersTimeline;
}

/// @nodoc
class __$$TweetFavoritersResponseDataImplCopyWithImpl<$Res>
    extends _$TweetFavoritersResponseDataCopyWithImpl<$Res,
        _$TweetFavoritersResponseDataImpl>
    implements _$$TweetFavoritersResponseDataImplCopyWith<$Res> {
  __$$TweetFavoritersResponseDataImplCopyWithImpl(
      _$TweetFavoritersResponseDataImpl _value,
      $Res Function(_$TweetFavoritersResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetFavoritersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritersTimeline = null,
  }) {
    return _then(_$TweetFavoritersResponseDataImpl(
      favoritersTimeline: null == favoritersTimeline
          ? _value.favoritersTimeline
          : favoritersTimeline // ignore: cast_nullable_to_non_nullable
              as TimelineV,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetFavoritersResponseDataImpl
    implements _TweetFavoritersResponseData {
  const _$TweetFavoritersResponseDataImpl(
      {@JsonKey(name: 'favoriters_timeline') required this.favoritersTimeline});

  factory _$TweetFavoritersResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetFavoritersResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'favoriters_timeline')
  final TimelineV favoritersTimeline;

  @override
  String toString() {
    return 'TweetFavoritersResponseData(favoritersTimeline: $favoritersTimeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetFavoritersResponseDataImpl &&
            (identical(other.favoritersTimeline, favoritersTimeline) ||
                other.favoritersTimeline == favoritersTimeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, favoritersTimeline);

  /// Create a copy of TweetFavoritersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetFavoritersResponseDataImplCopyWith<_$TweetFavoritersResponseDataImpl>
      get copyWith => __$$TweetFavoritersResponseDataImplCopyWithImpl<
          _$TweetFavoritersResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetFavoritersResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TweetFavoritersResponseData
    implements TweetFavoritersResponseData {
  const factory _TweetFavoritersResponseData(
          {@JsonKey(name: 'favoriters_timeline')
          required final TimelineV favoritersTimeline}) =
      _$TweetFavoritersResponseDataImpl;

  factory _TweetFavoritersResponseData.fromJson(Map<String, dynamic> json) =
      _$TweetFavoritersResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'favoriters_timeline')
  TimelineV get favoritersTimeline;

  /// Create a copy of TweetFavoritersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetFavoritersResponseDataImplCopyWith<_$TweetFavoritersResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
