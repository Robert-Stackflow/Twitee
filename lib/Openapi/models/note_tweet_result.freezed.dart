// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweetResult _$NoteTweetResultFromJson(Map<String, dynamic> json) {
  return _NoteTweetResult.fromJson(json);
}

/// @nodoc
mixin _$NoteTweetResult {
  NoteTweetResultData get result => throw _privateConstructorUsedError;

  /// Serializes this NoteTweetResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweetResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetResultCopyWith<NoteTweetResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetResultCopyWith<$Res> {
  factory $NoteTweetResultCopyWith(
          NoteTweetResult value, $Res Function(NoteTweetResult) then) =
      _$NoteTweetResultCopyWithImpl<$Res, NoteTweetResult>;
  @useResult
  $Res call({NoteTweetResultData result});

  $NoteTweetResultDataCopyWith<$Res> get result;
}

/// @nodoc
class _$NoteTweetResultCopyWithImpl<$Res, $Val extends NoteTweetResult>
    implements $NoteTweetResultCopyWith<$Res> {
  _$NoteTweetResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweetResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as NoteTweetResultData,
    ) as $Val);
  }

  /// Create a copy of NoteTweetResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteTweetResultDataCopyWith<$Res> get result {
    return $NoteTweetResultDataCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteTweetResultImplCopyWith<$Res>
    implements $NoteTweetResultCopyWith<$Res> {
  factory _$$NoteTweetResultImplCopyWith(_$NoteTweetResultImpl value,
          $Res Function(_$NoteTweetResultImpl) then) =
      __$$NoteTweetResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteTweetResultData result});

  @override
  $NoteTweetResultDataCopyWith<$Res> get result;
}

/// @nodoc
class __$$NoteTweetResultImplCopyWithImpl<$Res>
    extends _$NoteTweetResultCopyWithImpl<$Res, _$NoteTweetResultImpl>
    implements _$$NoteTweetResultImplCopyWith<$Res> {
  __$$NoteTweetResultImplCopyWithImpl(
      _$NoteTweetResultImpl _value, $Res Function(_$NoteTweetResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweetResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$NoteTweetResultImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as NoteTweetResultData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetResultImpl implements _NoteTweetResult {
  const _$NoteTweetResultImpl({required this.result});

  factory _$NoteTweetResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteTweetResultImplFromJson(json);

  @override
  final NoteTweetResultData result;

  @override
  String toString() {
    return 'NoteTweetResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetResultImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of NoteTweetResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetResultImplCopyWith<_$NoteTweetResultImpl> get copyWith =>
      __$$NoteTweetResultImplCopyWithImpl<_$NoteTweetResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetResultImplToJson(
      this,
    );
  }
}

abstract class _NoteTweetResult implements NoteTweetResult {
  const factory _NoteTweetResult({required final NoteTweetResultData result}) =
      _$NoteTweetResultImpl;

  factory _NoteTweetResult.fromJson(Map<String, dynamic> json) =
      _$NoteTweetResultImpl.fromJson;

  @override
  NoteTweetResultData get result;

  /// Create a copy of NoteTweetResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetResultImplCopyWith<_$NoteTweetResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
