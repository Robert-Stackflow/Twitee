// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResults _$UserResultsFromJson(Map<String, dynamic> json) {
  return _UserResults.fromJson(json);
}

/// @nodoc
mixin _$UserResults {
  UserUnion get result => throw _privateConstructorUsedError;

  /// Serializes this UserResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResultsCopyWith<UserResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResultsCopyWith<$Res> {
  factory $UserResultsCopyWith(
          UserResults value, $Res Function(UserResults) then) =
      _$UserResultsCopyWithImpl<$Res, UserResults>;
  @useResult
  $Res call({UserUnion result});

  $UserUnionCopyWith<$Res> get result;
}

/// @nodoc
class _$UserResultsCopyWithImpl<$Res, $Val extends UserResults>
    implements $UserResultsCopyWith<$Res> {
  _$UserResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResults
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
              as UserUnion,
    ) as $Val);
  }

  /// Create a copy of UserResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserUnionCopyWith<$Res> get result {
    return $UserUnionCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResultsImplCopyWith<$Res>
    implements $UserResultsCopyWith<$Res> {
  factory _$$UserResultsImplCopyWith(
          _$UserResultsImpl value, $Res Function(_$UserResultsImpl) then) =
      __$$UserResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserUnion result});

  @override
  $UserUnionCopyWith<$Res> get result;
}

/// @nodoc
class __$$UserResultsImplCopyWithImpl<$Res>
    extends _$UserResultsCopyWithImpl<$Res, _$UserResultsImpl>
    implements _$$UserResultsImplCopyWith<$Res> {
  __$$UserResultsImplCopyWithImpl(
      _$UserResultsImpl _value, $Res Function(_$UserResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$UserResultsImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserUnion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResultsImpl implements _UserResults {
  const _$UserResultsImpl({required this.result});

  factory _$UserResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResultsImplFromJson(json);

  @override
  final UserUnion result;

  @override
  String toString() {
    return 'UserResults(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResultsImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of UserResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResultsImplCopyWith<_$UserResultsImpl> get copyWith =>
      __$$UserResultsImplCopyWithImpl<_$UserResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResultsImplToJson(
      this,
    );
  }
}

abstract class _UserResults implements UserResults {
  const factory _UserResults({required final UserUnion result}) =
      _$UserResultsImpl;

  factory _UserResults.fromJson(Map<String, dynamic> json) =
      _$UserResultsImpl.fromJson;

  @override
  UserUnion get result;

  /// Create a copy of UserResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResultsImplCopyWith<_$UserResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
