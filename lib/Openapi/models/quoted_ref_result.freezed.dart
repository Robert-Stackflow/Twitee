// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quoted_ref_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotedRefResult _$QuotedRefResultFromJson(Map<String, dynamic> json) {
  return _QuotedRefResult.fromJson(json);
}

/// @nodoc
mixin _$QuotedRefResult {
  TweetUnion get result => throw _privateConstructorUsedError;

  /// Serializes this QuotedRefResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuotedRefResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuotedRefResultCopyWith<QuotedRefResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotedRefResultCopyWith<$Res> {
  factory $QuotedRefResultCopyWith(
          QuotedRefResult value, $Res Function(QuotedRefResult) then) =
      _$QuotedRefResultCopyWithImpl<$Res, QuotedRefResult>;
  @useResult
  $Res call({TweetUnion result});

  $TweetUnionCopyWith<$Res> get result;
}

/// @nodoc
class _$QuotedRefResultCopyWithImpl<$Res, $Val extends QuotedRefResult>
    implements $QuotedRefResultCopyWith<$Res> {
  _$QuotedRefResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuotedRefResult
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
              as TweetUnion,
    ) as $Val);
  }

  /// Create a copy of QuotedRefResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetUnionCopyWith<$Res> get result {
    return $TweetUnionCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuotedRefResultImplCopyWith<$Res>
    implements $QuotedRefResultCopyWith<$Res> {
  factory _$$QuotedRefResultImplCopyWith(_$QuotedRefResultImpl value,
          $Res Function(_$QuotedRefResultImpl) then) =
      __$$QuotedRefResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetUnion result});

  @override
  $TweetUnionCopyWith<$Res> get result;
}

/// @nodoc
class __$$QuotedRefResultImplCopyWithImpl<$Res>
    extends _$QuotedRefResultCopyWithImpl<$Res, _$QuotedRefResultImpl>
    implements _$$QuotedRefResultImplCopyWith<$Res> {
  __$$QuotedRefResultImplCopyWithImpl(
      _$QuotedRefResultImpl _value, $Res Function(_$QuotedRefResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuotedRefResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$QuotedRefResultImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TweetUnion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotedRefResultImpl implements _QuotedRefResult {
  const _$QuotedRefResultImpl({required this.result});

  factory _$QuotedRefResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotedRefResultImplFromJson(json);

  @override
  final TweetUnion result;

  @override
  String toString() {
    return 'QuotedRefResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotedRefResultImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of QuotedRefResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotedRefResultImplCopyWith<_$QuotedRefResultImpl> get copyWith =>
      __$$QuotedRefResultImplCopyWithImpl<_$QuotedRefResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotedRefResultImplToJson(
      this,
    );
  }
}

abstract class _QuotedRefResult implements QuotedRefResult {
  const factory _QuotedRefResult({required final TweetUnion result}) =
      _$QuotedRefResultImpl;

  factory _QuotedRefResult.fromJson(Map<String, dynamic> json) =
      _$QuotedRefResultImpl.fromJson;

  @override
  TweetUnion get result;

  /// Create a copy of QuotedRefResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuotedRefResultImplCopyWith<_$QuotedRefResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
