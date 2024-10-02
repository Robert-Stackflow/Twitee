// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_response_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowResponseUser _$FollowResponseUserFromJson(Map<String, dynamic> json) {
  return _FollowResponseUser.fromJson(json);
}

/// @nodoc
mixin _$FollowResponseUser {
  FollowResponseResult get result => throw _privateConstructorUsedError;

  /// Serializes this FollowResponseUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowResponseUserCopyWith<FollowResponseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowResponseUserCopyWith<$Res> {
  factory $FollowResponseUserCopyWith(
          FollowResponseUser value, $Res Function(FollowResponseUser) then) =
      _$FollowResponseUserCopyWithImpl<$Res, FollowResponseUser>;
  @useResult
  $Res call({FollowResponseResult result});

  $FollowResponseResultCopyWith<$Res> get result;
}

/// @nodoc
class _$FollowResponseUserCopyWithImpl<$Res, $Val extends FollowResponseUser>
    implements $FollowResponseUserCopyWith<$Res> {
  _$FollowResponseUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowResponseUser
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
              as FollowResponseResult,
    ) as $Val);
  }

  /// Create a copy of FollowResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FollowResponseResultCopyWith<$Res> get result {
    return $FollowResponseResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowResponseUserImplCopyWith<$Res>
    implements $FollowResponseUserCopyWith<$Res> {
  factory _$$FollowResponseUserImplCopyWith(_$FollowResponseUserImpl value,
          $Res Function(_$FollowResponseUserImpl) then) =
      __$$FollowResponseUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FollowResponseResult result});

  @override
  $FollowResponseResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$FollowResponseUserImplCopyWithImpl<$Res>
    extends _$FollowResponseUserCopyWithImpl<$Res, _$FollowResponseUserImpl>
    implements _$$FollowResponseUserImplCopyWith<$Res> {
  __$$FollowResponseUserImplCopyWithImpl(_$FollowResponseUserImpl _value,
      $Res Function(_$FollowResponseUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$FollowResponseUserImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FollowResponseResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowResponseUserImpl implements _FollowResponseUser {
  const _$FollowResponseUserImpl({required this.result});

  factory _$FollowResponseUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowResponseUserImplFromJson(json);

  @override
  final FollowResponseResult result;

  @override
  String toString() {
    return 'FollowResponseUser(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowResponseUserImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of FollowResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowResponseUserImplCopyWith<_$FollowResponseUserImpl> get copyWith =>
      __$$FollowResponseUserImplCopyWithImpl<_$FollowResponseUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowResponseUserImplToJson(
      this,
    );
  }
}

abstract class _FollowResponseUser implements FollowResponseUser {
  const factory _FollowResponseUser(
      {required final FollowResponseResult result}) = _$FollowResponseUserImpl;

  factory _FollowResponseUser.fromJson(Map<String, dynamic> json) =
      _$FollowResponseUserImpl.fromJson;

  @override
  FollowResponseResult get result;

  /// Create a copy of FollowResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowResponseUserImplCopyWith<_$FollowResponseUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
