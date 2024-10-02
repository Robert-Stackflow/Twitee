// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_bookmark_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteBookmarkResponseData _$DeleteBookmarkResponseDataFromJson(
    Map<String, dynamic> json) {
  return _DeleteBookmarkResponseData.fromJson(json);
}

/// @nodoc
mixin _$DeleteBookmarkResponseData {
  @JsonKey(name: 'tweet_bookmark_delete')
  String get tweetBookmarkDelete => throw _privateConstructorUsedError;

  /// Serializes this DeleteBookmarkResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteBookmarkResponseDataCopyWith<DeleteBookmarkResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteBookmarkResponseDataCopyWith<$Res> {
  factory $DeleteBookmarkResponseDataCopyWith(DeleteBookmarkResponseData value,
          $Res Function(DeleteBookmarkResponseData) then) =
      _$DeleteBookmarkResponseDataCopyWithImpl<$Res,
          DeleteBookmarkResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tweet_bookmark_delete') String tweetBookmarkDelete});
}

/// @nodoc
class _$DeleteBookmarkResponseDataCopyWithImpl<$Res,
        $Val extends DeleteBookmarkResponseData>
    implements $DeleteBookmarkResponseDataCopyWith<$Res> {
  _$DeleteBookmarkResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetBookmarkDelete = null,
  }) {
    return _then(_value.copyWith(
      tweetBookmarkDelete: null == tweetBookmarkDelete
          ? _value.tweetBookmarkDelete
          : tweetBookmarkDelete // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteBookmarkResponseDataImplCopyWith<$Res>
    implements $DeleteBookmarkResponseDataCopyWith<$Res> {
  factory _$$DeleteBookmarkResponseDataImplCopyWith(
          _$DeleteBookmarkResponseDataImpl value,
          $Res Function(_$DeleteBookmarkResponseDataImpl) then) =
      __$$DeleteBookmarkResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tweet_bookmark_delete') String tweetBookmarkDelete});
}

/// @nodoc
class __$$DeleteBookmarkResponseDataImplCopyWithImpl<$Res>
    extends _$DeleteBookmarkResponseDataCopyWithImpl<$Res,
        _$DeleteBookmarkResponseDataImpl>
    implements _$$DeleteBookmarkResponseDataImplCopyWith<$Res> {
  __$$DeleteBookmarkResponseDataImplCopyWithImpl(
      _$DeleteBookmarkResponseDataImpl _value,
      $Res Function(_$DeleteBookmarkResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetBookmarkDelete = null,
  }) {
    return _then(_$DeleteBookmarkResponseDataImpl(
      tweetBookmarkDelete: null == tweetBookmarkDelete
          ? _value.tweetBookmarkDelete
          : tweetBookmarkDelete // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteBookmarkResponseDataImpl implements _DeleteBookmarkResponseData {
  const _$DeleteBookmarkResponseDataImpl(
      {@JsonKey(name: 'tweet_bookmark_delete')
      required this.tweetBookmarkDelete});

  factory _$DeleteBookmarkResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteBookmarkResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'tweet_bookmark_delete')
  final String tweetBookmarkDelete;

  @override
  String toString() {
    return 'DeleteBookmarkResponseData(tweetBookmarkDelete: $tweetBookmarkDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkResponseDataImpl &&
            (identical(other.tweetBookmarkDelete, tweetBookmarkDelete) ||
                other.tweetBookmarkDelete == tweetBookmarkDelete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tweetBookmarkDelete);

  /// Create a copy of DeleteBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookmarkResponseDataImplCopyWith<_$DeleteBookmarkResponseDataImpl>
      get copyWith => __$$DeleteBookmarkResponseDataImplCopyWithImpl<
          _$DeleteBookmarkResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteBookmarkResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DeleteBookmarkResponseData
    implements DeleteBookmarkResponseData {
  const factory _DeleteBookmarkResponseData(
          {@JsonKey(name: 'tweet_bookmark_delete')
          required final String tweetBookmarkDelete}) =
      _$DeleteBookmarkResponseDataImpl;

  factory _DeleteBookmarkResponseData.fromJson(Map<String, dynamic> json) =
      _$DeleteBookmarkResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'tweet_bookmark_delete')
  String get tweetBookmarkDelete;

  /// Create a copy of DeleteBookmarkResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBookmarkResponseDataImplCopyWith<_$DeleteBookmarkResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
