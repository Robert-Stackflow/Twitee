// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_tweet_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteTweetResponseData _$FavoriteTweetResponseDataFromJson(
    Map<String, dynamic> json) {
  return _FavoriteTweetResponseData.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTweetResponseData {
  FavoriteTweet get data => throw _privateConstructorUsedError;

  /// Serializes this FavoriteTweetResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteTweetResponseDataCopyWith<FavoriteTweetResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTweetResponseDataCopyWith<$Res> {
  factory $FavoriteTweetResponseDataCopyWith(FavoriteTweetResponseData value,
          $Res Function(FavoriteTweetResponseData) then) =
      _$FavoriteTweetResponseDataCopyWithImpl<$Res, FavoriteTweetResponseData>;
  @useResult
  $Res call({FavoriteTweet data});

  $FavoriteTweetCopyWith<$Res> get data;
}

/// @nodoc
class _$FavoriteTweetResponseDataCopyWithImpl<$Res,
        $Val extends FavoriteTweetResponseData>
    implements $FavoriteTweetResponseDataCopyWith<$Res> {
  _$FavoriteTweetResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteTweetResponseData
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
              as FavoriteTweet,
    ) as $Val);
  }

  /// Create a copy of FavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavoriteTweetCopyWith<$Res> get data {
    return $FavoriteTweetCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteTweetResponseDataImplCopyWith<$Res>
    implements $FavoriteTweetResponseDataCopyWith<$Res> {
  factory _$$FavoriteTweetResponseDataImplCopyWith(
          _$FavoriteTweetResponseDataImpl value,
          $Res Function(_$FavoriteTweetResponseDataImpl) then) =
      __$$FavoriteTweetResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteTweet data});

  @override
  $FavoriteTweetCopyWith<$Res> get data;
}

/// @nodoc
class __$$FavoriteTweetResponseDataImplCopyWithImpl<$Res>
    extends _$FavoriteTweetResponseDataCopyWithImpl<$Res,
        _$FavoriteTweetResponseDataImpl>
    implements _$$FavoriteTweetResponseDataImplCopyWith<$Res> {
  __$$FavoriteTweetResponseDataImplCopyWithImpl(
      _$FavoriteTweetResponseDataImpl _value,
      $Res Function(_$FavoriteTweetResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FavoriteTweetResponseDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavoriteTweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteTweetResponseDataImpl implements _FavoriteTweetResponseData {
  const _$FavoriteTweetResponseDataImpl({required this.data});

  factory _$FavoriteTweetResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteTweetResponseDataImplFromJson(json);

  @override
  final FavoriteTweet data;

  @override
  String toString() {
    return 'FavoriteTweetResponseData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteTweetResponseDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of FavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteTweetResponseDataImplCopyWith<_$FavoriteTweetResponseDataImpl>
      get copyWith => __$$FavoriteTweetResponseDataImplCopyWithImpl<
          _$FavoriteTweetResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteTweetResponseDataImplToJson(
      this,
    );
  }
}

abstract class _FavoriteTweetResponseData implements FavoriteTweetResponseData {
  const factory _FavoriteTweetResponseData(
      {required final FavoriteTweet data}) = _$FavoriteTweetResponseDataImpl;

  factory _FavoriteTweetResponseData.fromJson(Map<String, dynamic> json) =
      _$FavoriteTweetResponseDataImpl.fromJson;

  @override
  FavoriteTweet get data;

  /// Create a copy of FavoriteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteTweetResponseDataImplCopyWith<_$FavoriteTweetResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
