// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_follows_reply_user_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuperFollowsReplyUserResult _$SuperFollowsReplyUserResultFromJson(
    Map<String, dynamic> json) {
  return _SuperFollowsReplyUserResult.fromJson(json);
}

/// @nodoc
mixin _$SuperFollowsReplyUserResult {
  SuperFollowsReplyUserResultData get result =>
      throw _privateConstructorUsedError;

  /// Serializes this SuperFollowsReplyUserResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperFollowsReplyUserResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperFollowsReplyUserResultCopyWith<SuperFollowsReplyUserResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperFollowsReplyUserResultCopyWith<$Res> {
  factory $SuperFollowsReplyUserResultCopyWith(
          SuperFollowsReplyUserResult value,
          $Res Function(SuperFollowsReplyUserResult) then) =
      _$SuperFollowsReplyUserResultCopyWithImpl<$Res,
          SuperFollowsReplyUserResult>;
  @useResult
  $Res call({SuperFollowsReplyUserResultData result});

  $SuperFollowsReplyUserResultDataCopyWith<$Res> get result;
}

/// @nodoc
class _$SuperFollowsReplyUserResultCopyWithImpl<$Res,
        $Val extends SuperFollowsReplyUserResult>
    implements $SuperFollowsReplyUserResultCopyWith<$Res> {
  _$SuperFollowsReplyUserResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperFollowsReplyUserResult
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
              as SuperFollowsReplyUserResultData,
    ) as $Val);
  }

  /// Create a copy of SuperFollowsReplyUserResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperFollowsReplyUserResultDataCopyWith<$Res> get result {
    return $SuperFollowsReplyUserResultDataCopyWith<$Res>(_value.result,
        (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuperFollowsReplyUserResultImplCopyWith<$Res>
    implements $SuperFollowsReplyUserResultCopyWith<$Res> {
  factory _$$SuperFollowsReplyUserResultImplCopyWith(
          _$SuperFollowsReplyUserResultImpl value,
          $Res Function(_$SuperFollowsReplyUserResultImpl) then) =
      __$$SuperFollowsReplyUserResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SuperFollowsReplyUserResultData result});

  @override
  $SuperFollowsReplyUserResultDataCopyWith<$Res> get result;
}

/// @nodoc
class __$$SuperFollowsReplyUserResultImplCopyWithImpl<$Res>
    extends _$SuperFollowsReplyUserResultCopyWithImpl<$Res,
        _$SuperFollowsReplyUserResultImpl>
    implements _$$SuperFollowsReplyUserResultImplCopyWith<$Res> {
  __$$SuperFollowsReplyUserResultImplCopyWithImpl(
      _$SuperFollowsReplyUserResultImpl _value,
      $Res Function(_$SuperFollowsReplyUserResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperFollowsReplyUserResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SuperFollowsReplyUserResultImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SuperFollowsReplyUserResultData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperFollowsReplyUserResultImpl
    implements _SuperFollowsReplyUserResult {
  const _$SuperFollowsReplyUserResultImpl({required this.result});

  factory _$SuperFollowsReplyUserResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SuperFollowsReplyUserResultImplFromJson(json);

  @override
  final SuperFollowsReplyUserResultData result;

  @override
  String toString() {
    return 'SuperFollowsReplyUserResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperFollowsReplyUserResultImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of SuperFollowsReplyUserResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperFollowsReplyUserResultImplCopyWith<_$SuperFollowsReplyUserResultImpl>
      get copyWith => __$$SuperFollowsReplyUserResultImplCopyWithImpl<
          _$SuperFollowsReplyUserResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperFollowsReplyUserResultImplToJson(
      this,
    );
  }
}

abstract class _SuperFollowsReplyUserResult
    implements SuperFollowsReplyUserResult {
  const factory _SuperFollowsReplyUserResult(
          {required final SuperFollowsReplyUserResultData result}) =
      _$SuperFollowsReplyUserResultImpl;

  factory _SuperFollowsReplyUserResult.fromJson(Map<String, dynamic> json) =
      _$SuperFollowsReplyUserResultImpl.fromJson;

  @override
  SuperFollowsReplyUserResultData get result;

  /// Create a copy of SuperFollowsReplyUserResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperFollowsReplyUserResultImplCopyWith<_$SuperFollowsReplyUserResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
