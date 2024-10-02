// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_result_by_rest_id_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetResultByRestIdData _$TweetResultByRestIdDataFromJson(
    Map<String, dynamic> json) {
  return _TweetResultByRestIdData.fromJson(json);
}

/// @nodoc
mixin _$TweetResultByRestIdData {
  ItemResult get tweetResult => throw _privateConstructorUsedError;

  /// Serializes this TweetResultByRestIdData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetResultByRestIdData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetResultByRestIdDataCopyWith<TweetResultByRestIdData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetResultByRestIdDataCopyWith<$Res> {
  factory $TweetResultByRestIdDataCopyWith(TweetResultByRestIdData value,
          $Res Function(TweetResultByRestIdData) then) =
      _$TweetResultByRestIdDataCopyWithImpl<$Res, TweetResultByRestIdData>;
  @useResult
  $Res call({ItemResult tweetResult});

  $ItemResultCopyWith<$Res> get tweetResult;
}

/// @nodoc
class _$TweetResultByRestIdDataCopyWithImpl<$Res,
        $Val extends TweetResultByRestIdData>
    implements $TweetResultByRestIdDataCopyWith<$Res> {
  _$TweetResultByRestIdDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetResultByRestIdData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetResult = null,
  }) {
    return _then(_value.copyWith(
      tweetResult: null == tweetResult
          ? _value.tweetResult
          : tweetResult // ignore: cast_nullable_to_non_nullable
              as ItemResult,
    ) as $Val);
  }

  /// Create a copy of TweetResultByRestIdData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemResultCopyWith<$Res> get tweetResult {
    return $ItemResultCopyWith<$Res>(_value.tweetResult, (value) {
      return _then(_value.copyWith(tweetResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetResultByRestIdDataImplCopyWith<$Res>
    implements $TweetResultByRestIdDataCopyWith<$Res> {
  factory _$$TweetResultByRestIdDataImplCopyWith(
          _$TweetResultByRestIdDataImpl value,
          $Res Function(_$TweetResultByRestIdDataImpl) then) =
      __$$TweetResultByRestIdDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemResult tweetResult});

  @override
  $ItemResultCopyWith<$Res> get tweetResult;
}

/// @nodoc
class __$$TweetResultByRestIdDataImplCopyWithImpl<$Res>
    extends _$TweetResultByRestIdDataCopyWithImpl<$Res,
        _$TweetResultByRestIdDataImpl>
    implements _$$TweetResultByRestIdDataImplCopyWith<$Res> {
  __$$TweetResultByRestIdDataImplCopyWithImpl(
      _$TweetResultByRestIdDataImpl _value,
      $Res Function(_$TweetResultByRestIdDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetResultByRestIdData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetResult = null,
  }) {
    return _then(_$TweetResultByRestIdDataImpl(
      tweetResult: null == tweetResult
          ? _value.tweetResult
          : tweetResult // ignore: cast_nullable_to_non_nullable
              as ItemResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetResultByRestIdDataImpl implements _TweetResultByRestIdData {
  const _$TweetResultByRestIdDataImpl({required this.tweetResult});

  factory _$TweetResultByRestIdDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetResultByRestIdDataImplFromJson(json);

  @override
  final ItemResult tweetResult;

  @override
  String toString() {
    return 'TweetResultByRestIdData(tweetResult: $tweetResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetResultByRestIdDataImpl &&
            (identical(other.tweetResult, tweetResult) ||
                other.tweetResult == tweetResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tweetResult);

  /// Create a copy of TweetResultByRestIdData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetResultByRestIdDataImplCopyWith<_$TweetResultByRestIdDataImpl>
      get copyWith => __$$TweetResultByRestIdDataImplCopyWithImpl<
          _$TweetResultByRestIdDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetResultByRestIdDataImplToJson(
      this,
    );
  }
}

abstract class _TweetResultByRestIdData implements TweetResultByRestIdData {
  const factory _TweetResultByRestIdData(
      {required final ItemResult tweetResult}) = _$TweetResultByRestIdDataImpl;

  factory _TweetResultByRestIdData.fromJson(Map<String, dynamic> json) =
      _$TweetResultByRestIdDataImpl.fromJson;

  @override
  ItemResult get tweetResult;

  /// Create a copy of TweetResultByRestIdData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetResultByRestIdDataImplCopyWith<_$TweetResultByRestIdDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
