// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_tweet_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTweetResponseData _$DeleteTweetResponseDataFromJson(
    Map<String, dynamic> json) {
  return _DeleteTweetResponseData.fromJson(json);
}

/// @nodoc
mixin _$DeleteTweetResponseData {
  @JsonKey(name: 'delete_retweet')
  DeleteTweetResponseResult get deleteRetweet =>
      throw _privateConstructorUsedError;

  /// Serializes this DeleteTweetResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTweetResponseDataCopyWith<DeleteTweetResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTweetResponseDataCopyWith<$Res> {
  factory $DeleteTweetResponseDataCopyWith(DeleteTweetResponseData value,
          $Res Function(DeleteTweetResponseData) then) =
      _$DeleteTweetResponseDataCopyWithImpl<$Res, DeleteTweetResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delete_retweet')
      DeleteTweetResponseResult deleteRetweet});

  $DeleteTweetResponseResultCopyWith<$Res> get deleteRetweet;
}

/// @nodoc
class _$DeleteTweetResponseDataCopyWithImpl<$Res,
        $Val extends DeleteTweetResponseData>
    implements $DeleteTweetResponseDataCopyWith<$Res> {
  _$DeleteTweetResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteRetweet = null,
  }) {
    return _then(_value.copyWith(
      deleteRetweet: null == deleteRetweet
          ? _value.deleteRetweet
          : deleteRetweet // ignore: cast_nullable_to_non_nullable
              as DeleteTweetResponseResult,
    ) as $Val);
  }

  /// Create a copy of DeleteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteTweetResponseResultCopyWith<$Res> get deleteRetweet {
    return $DeleteTweetResponseResultCopyWith<$Res>(_value.deleteRetweet,
        (value) {
      return _then(_value.copyWith(deleteRetweet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteTweetResponseDataImplCopyWith<$Res>
    implements $DeleteTweetResponseDataCopyWith<$Res> {
  factory _$$DeleteTweetResponseDataImplCopyWith(
          _$DeleteTweetResponseDataImpl value,
          $Res Function(_$DeleteTweetResponseDataImpl) then) =
      __$$DeleteTweetResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delete_retweet')
      DeleteTweetResponseResult deleteRetweet});

  @override
  $DeleteTweetResponseResultCopyWith<$Res> get deleteRetweet;
}

/// @nodoc
class __$$DeleteTweetResponseDataImplCopyWithImpl<$Res>
    extends _$DeleteTweetResponseDataCopyWithImpl<$Res,
        _$DeleteTweetResponseDataImpl>
    implements _$$DeleteTweetResponseDataImplCopyWith<$Res> {
  __$$DeleteTweetResponseDataImplCopyWithImpl(
      _$DeleteTweetResponseDataImpl _value,
      $Res Function(_$DeleteTweetResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteRetweet = null,
  }) {
    return _then(_$DeleteTweetResponseDataImpl(
      deleteRetweet: null == deleteRetweet
          ? _value.deleteRetweet
          : deleteRetweet // ignore: cast_nullable_to_non_nullable
              as DeleteTweetResponseResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTweetResponseDataImpl implements _DeleteTweetResponseData {
  const _$DeleteTweetResponseDataImpl(
      {@JsonKey(name: 'delete_retweet') required this.deleteRetweet});

  factory _$DeleteTweetResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTweetResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'delete_retweet')
  final DeleteTweetResponseResult deleteRetweet;

  @override
  String toString() {
    return 'DeleteTweetResponseData(deleteRetweet: $deleteRetweet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTweetResponseDataImpl &&
            (identical(other.deleteRetweet, deleteRetweet) ||
                other.deleteRetweet == deleteRetweet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deleteRetweet);

  /// Create a copy of DeleteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTweetResponseDataImplCopyWith<_$DeleteTweetResponseDataImpl>
      get copyWith => __$$DeleteTweetResponseDataImplCopyWithImpl<
          _$DeleteTweetResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTweetResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DeleteTweetResponseData implements DeleteTweetResponseData {
  const factory _DeleteTweetResponseData(
          {@JsonKey(name: 'delete_retweet')
          required final DeleteTweetResponseResult deleteRetweet}) =
      _$DeleteTweetResponseDataImpl;

  factory _DeleteTweetResponseData.fromJson(Map<String, dynamic> json) =
      _$DeleteTweetResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'delete_retweet')
  DeleteTweetResponseResult get deleteRetweet;

  /// Create a copy of DeleteTweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTweetResponseDataImplCopyWith<_$DeleteTweetResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
