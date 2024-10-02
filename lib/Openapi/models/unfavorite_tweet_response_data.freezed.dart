// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unfavorite_tweet_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnfavoriteTweetResponseData _$UnfavoriteTweetResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UnfavoriteTweetResponseData.fromJson(json);
}

/// @nodoc
mixin _$UnfavoriteTweetResponseData {
  UnfavoriteTweet get data => throw _privateConstructorUsedError;

  /// Serializes this UnfavoriteTweetResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnfavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnfavoriteTweetResponseDataCopyWith<UnfavoriteTweetResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfavoriteTweetResponseDataCopyWith<$Res> {
  factory $UnfavoriteTweetResponseDataCopyWith(
          UnfavoriteTweetResponseData value,
          $Res Function(UnfavoriteTweetResponseData) then) =
      _$UnfavoriteTweetResponseDataCopyWithImpl<$Res,
          UnfavoriteTweetResponseData>;
  @useResult
  $Res call({UnfavoriteTweet data});

  $UnfavoriteTweetCopyWith<$Res> get data;
}

/// @nodoc
class _$UnfavoriteTweetResponseDataCopyWithImpl<$Res,
        $Val extends UnfavoriteTweetResponseData>
    implements $UnfavoriteTweetResponseDataCopyWith<$Res> {
  _$UnfavoriteTweetResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnfavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnfavoriteTweet,
    ) as $Val);
  }

  /// Create a copy of UnfavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnfavoriteTweetCopyWith<$Res> get data {
    return $UnfavoriteTweetCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnfavoriteTweetResponseDataImplCopyWith<$Res>
    implements $UnfavoriteTweetResponseDataCopyWith<$Res> {
  factory _$$UnfavoriteTweetResponseDataImplCopyWith(
          _$UnfavoriteTweetResponseDataImpl value,
          $Res Function(_$UnfavoriteTweetResponseDataImpl) then) =
      __$$UnfavoriteTweetResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnfavoriteTweet data});

  @override
  $UnfavoriteTweetCopyWith<$Res> get data;
}

/// @nodoc
class __$$UnfavoriteTweetResponseDataImplCopyWithImpl<$Res>
    extends _$UnfavoriteTweetResponseDataCopyWithImpl<$Res,
        _$UnfavoriteTweetResponseDataImpl>
    implements _$$UnfavoriteTweetResponseDataImplCopyWith<$Res> {
  __$$UnfavoriteTweetResponseDataImplCopyWithImpl(
      _$UnfavoriteTweetResponseDataImpl _value,
      $Res Function(_$UnfavoriteTweetResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnfavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UnfavoriteTweetResponseDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnfavoriteTweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnfavoriteTweetResponseDataImpl
    implements _UnfavoriteTweetResponseData {
  const _$UnfavoriteTweetResponseDataImpl({required this.data});

  factory _$UnfavoriteTweetResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnfavoriteTweetResponseDataImplFromJson(json);

  @override
  final UnfavoriteTweet data;

  @override
  String toString() {
    return 'UnfavoriteTweetResponseData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnfavoriteTweetResponseDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UnfavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnfavoriteTweetResponseDataImplCopyWith<_$UnfavoriteTweetResponseDataImpl>
      get copyWith => __$$UnfavoriteTweetResponseDataImplCopyWithImpl<
          _$UnfavoriteTweetResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnfavoriteTweetResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UnfavoriteTweetResponseData
    implements UnfavoriteTweetResponseData {
  const factory _UnfavoriteTweetResponseData(
          {required final UnfavoriteTweet data}) =
      _$UnfavoriteTweetResponseDataImpl;

  factory _UnfavoriteTweetResponseData.fromJson(Map<String, dynamic> json) =
      _$UnfavoriteTweetResponseDataImpl.fromJson;

  @override
  UnfavoriteTweet get data;

  /// Create a copy of UnfavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnfavoriteTweetResponseDataImplCopyWith<_$UnfavoriteTweetResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
