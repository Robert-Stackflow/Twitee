// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bookmark_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookmarkResponseData _$CreateBookmarkResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateBookmarkResponseData.fromJson(json);
}

/// @nodoc
mixin _$CreateBookmarkResponseData {
  @JsonKey(name: 'tweet_bookmark_put')
  String get tweetBookmarkPut => throw _privateConstructorUsedError;

  /// Serializes this CreateBookmarkResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBookmarkResponseDataCopyWith<CreateBookmarkResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookmarkResponseDataCopyWith<$Res> {
  factory $CreateBookmarkResponseDataCopyWith(CreateBookmarkResponseData value,
          $Res Function(CreateBookmarkResponseData) then) =
      _$CreateBookmarkResponseDataCopyWithImpl<$Res,
          CreateBookmarkResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'tweet_bookmark_put') String tweetBookmarkPut});
}

/// @nodoc
class _$CreateBookmarkResponseDataCopyWithImpl<$Res,
        $Val extends CreateBookmarkResponseData>
    implements $CreateBookmarkResponseDataCopyWith<$Res> {
  _$CreateBookmarkResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetBookmarkPut = null,
  }) {
    return _then(_value.copyWith(
      tweetBookmarkPut: null == tweetBookmarkPut
          ? _value.tweetBookmarkPut
          : tweetBookmarkPut // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookmarkResponseDataImplCopyWith<$Res>
    implements $CreateBookmarkResponseDataCopyWith<$Res> {
  factory _$$CreateBookmarkResponseDataImplCopyWith(
          _$CreateBookmarkResponseDataImpl value,
          $Res Function(_$CreateBookmarkResponseDataImpl) then) =
      __$$CreateBookmarkResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tweet_bookmark_put') String tweetBookmarkPut});
}

/// @nodoc
class __$$CreateBookmarkResponseDataImplCopyWithImpl<$Res>
    extends _$CreateBookmarkResponseDataCopyWithImpl<$Res,
        _$CreateBookmarkResponseDataImpl>
    implements _$$CreateBookmarkResponseDataImplCopyWith<$Res> {
  __$$CreateBookmarkResponseDataImplCopyWithImpl(
      _$CreateBookmarkResponseDataImpl _value,
      $Res Function(_$CreateBookmarkResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetBookmarkPut = null,
  }) {
    return _then(_$CreateBookmarkResponseDataImpl(
      tweetBookmarkPut: null == tweetBookmarkPut
          ? _value.tweetBookmarkPut
          : tweetBookmarkPut // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookmarkResponseDataImpl implements _CreateBookmarkResponseData {
  const _$CreateBookmarkResponseDataImpl(
      {@JsonKey(name: 'tweet_bookmark_put') required this.tweetBookmarkPut});

  factory _$CreateBookmarkResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateBookmarkResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'tweet_bookmark_put')
  final String tweetBookmarkPut;

  @override
  String toString() {
    return 'CreateBookmarkResponseData(tweetBookmarkPut: $tweetBookmarkPut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookmarkResponseDataImpl &&
            (identical(other.tweetBookmarkPut, tweetBookmarkPut) ||
                other.tweetBookmarkPut == tweetBookmarkPut));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tweetBookmarkPut);

  /// Create a copy of CreateBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookmarkResponseDataImplCopyWith<_$CreateBookmarkResponseDataImpl>
      get copyWith => __$$CreateBookmarkResponseDataImplCopyWithImpl<
          _$CreateBookmarkResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookmarkResponseDataImplToJson(
      this,
    );
  }
}

abstract class _CreateBookmarkResponseData
    implements CreateBookmarkResponseData {
  const factory _CreateBookmarkResponseData(
          {@JsonKey(name: 'tweet_bookmark_put')
          required final String tweetBookmarkPut}) =
      _$CreateBookmarkResponseDataImpl;

  factory _CreateBookmarkResponseData.fromJson(Map<String, dynamic> json) =
      _$CreateBookmarkResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'tweet_bookmark_put')
  String get tweetBookmarkPut;

  /// Create a copy of CreateBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBookmarkResponseDataImplCopyWith<_$CreateBookmarkResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
