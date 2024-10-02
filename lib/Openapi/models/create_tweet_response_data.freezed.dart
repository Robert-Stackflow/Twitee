// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tweet_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTweetResponseData _$CreateTweetResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateTweetResponseData.fromJson(json);
}

/// @nodoc
mixin _$CreateTweetResponseData {
  @JsonKey(name: 'create_tweet')
  CreateTweetResponseResult get createTweet =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateTweetResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTweetResponseDataCopyWith<CreateTweetResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTweetResponseDataCopyWith<$Res> {
  factory $CreateTweetResponseDataCopyWith(CreateTweetResponseData value,
          $Res Function(CreateTweetResponseData) then) =
      _$CreateTweetResponseDataCopyWithImpl<$Res, CreateTweetResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'create_tweet') CreateTweetResponseResult createTweet});

  $CreateTweetResponseResultCopyWith<$Res> get createTweet;
}

/// @nodoc
class _$CreateTweetResponseDataCopyWithImpl<$Res,
        $Val extends CreateTweetResponseData>
    implements $CreateTweetResponseDataCopyWith<$Res> {
  _$CreateTweetResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTweet = null,
  }) {
    return _then(_value.copyWith(
      createTweet: null == createTweet
          ? _value.createTweet
          : createTweet // ignore: cast_nullable_to_non_nullable
              as CreateTweetResponseResult,
    ) as $Val);
  }

  /// Create a copy of CreateTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateTweetResponseResultCopyWith<$Res> get createTweet {
    return $CreateTweetResponseResultCopyWith<$Res>(_value.createTweet,
        (value) {
      return _then(_value.copyWith(createTweet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTweetResponseDataImplCopyWith<$Res>
    implements $CreateTweetResponseDataCopyWith<$Res> {
  factory _$$CreateTweetResponseDataImplCopyWith(
          _$CreateTweetResponseDataImpl value,
          $Res Function(_$CreateTweetResponseDataImpl) then) =
      __$$CreateTweetResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'create_tweet') CreateTweetResponseResult createTweet});

  @override
  $CreateTweetResponseResultCopyWith<$Res> get createTweet;
}

/// @nodoc
class __$$CreateTweetResponseDataImplCopyWithImpl<$Res>
    extends _$CreateTweetResponseDataCopyWithImpl<$Res,
        _$CreateTweetResponseDataImpl>
    implements _$$CreateTweetResponseDataImplCopyWith<$Res> {
  __$$CreateTweetResponseDataImplCopyWithImpl(
      _$CreateTweetResponseDataImpl _value,
      $Res Function(_$CreateTweetResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTweet = null,
  }) {
    return _then(_$CreateTweetResponseDataImpl(
      createTweet: null == createTweet
          ? _value.createTweet
          : createTweet // ignore: cast_nullable_to_non_nullable
              as CreateTweetResponseResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTweetResponseDataImpl implements _CreateTweetResponseData {
  const _$CreateTweetResponseDataImpl(
      {@JsonKey(name: 'create_tweet') required this.createTweet});

  factory _$CreateTweetResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTweetResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'create_tweet')
  final CreateTweetResponseResult createTweet;

  @override
  String toString() {
    return 'CreateTweetResponseData(createTweet: $createTweet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTweetResponseDataImpl &&
            (identical(other.createTweet, createTweet) ||
                other.createTweet == createTweet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createTweet);

  /// Create a copy of CreateTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTweetResponseDataImplCopyWith<_$CreateTweetResponseDataImpl>
      get copyWith => __$$CreateTweetResponseDataImplCopyWithImpl<
          _$CreateTweetResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTweetResponseDataImplToJson(
      this,
    );
  }
}

abstract class _CreateTweetResponseData implements CreateTweetResponseData {
  const factory _CreateTweetResponseData(
          {@JsonKey(name: 'create_tweet')
          required final CreateTweetResponseResult createTweet}) =
      _$CreateTweetResponseDataImpl;

  factory _CreateTweetResponseData.fromJson(Map<String, dynamic> json) =
      _$CreateTweetResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'create_tweet')
  CreateTweetResponseResult get createTweet;

  /// Create a copy of CreateTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTweetResponseDataImplCopyWith<_$CreateTweetResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
