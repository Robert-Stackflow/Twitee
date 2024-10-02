// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_result_core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResultCore _$UserResultCoreFromJson(Map<String, dynamic> json) {
  return _UserResultCore.fromJson(json);
}

/// @nodoc
mixin _$UserResultCore {
  @JsonKey(name: 'user_results')
  UserResults get userResults => throw _privateConstructorUsedError;

  /// Serializes this UserResultCore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResultCore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResultCoreCopyWith<UserResultCore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResultCoreCopyWith<$Res> {
  factory $UserResultCoreCopyWith(
          UserResultCore value, $Res Function(UserResultCore) then) =
      _$UserResultCoreCopyWithImpl<$Res, UserResultCore>;
  @useResult
  $Res call({@JsonKey(name: 'user_results') UserResults userResults});

  $UserResultsCopyWith<$Res> get userResults;
}

/// @nodoc
class _$UserResultCoreCopyWithImpl<$Res, $Val extends UserResultCore>
    implements $UserResultCoreCopyWith<$Res> {
  _$UserResultCoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResultCore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userResults = null,
  }) {
    return _then(_value.copyWith(
      userResults: null == userResults
          ? _value.userResults
          : userResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
    ) as $Val);
  }

  /// Create a copy of UserResultCore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultsCopyWith<$Res> get userResults {
    return $UserResultsCopyWith<$Res>(_value.userResults, (value) {
      return _then(_value.copyWith(userResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResultCoreImplCopyWith<$Res>
    implements $UserResultCoreCopyWith<$Res> {
  factory _$$UserResultCoreImplCopyWith(_$UserResultCoreImpl value,
          $Res Function(_$UserResultCoreImpl) then) =
      __$$UserResultCoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_results') UserResults userResults});

  @override
  $UserResultsCopyWith<$Res> get userResults;
}

/// @nodoc
class __$$UserResultCoreImplCopyWithImpl<$Res>
    extends _$UserResultCoreCopyWithImpl<$Res, _$UserResultCoreImpl>
    implements _$$UserResultCoreImplCopyWith<$Res> {
  __$$UserResultCoreImplCopyWithImpl(
      _$UserResultCoreImpl _value, $Res Function(_$UserResultCoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResultCore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userResults = null,
  }) {
    return _then(_$UserResultCoreImpl(
      userResults: null == userResults
          ? _value.userResults
          : userResults // ignore: cast_nullable_to_non_nullable
              as UserResults,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResultCoreImpl implements _UserResultCore {
  const _$UserResultCoreImpl(
      {@JsonKey(name: 'user_results') required this.userResults});

  factory _$UserResultCoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResultCoreImplFromJson(json);

  @override
  @JsonKey(name: 'user_results')
  final UserResults userResults;

  @override
  String toString() {
    return 'UserResultCore(userResults: $userResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResultCoreImpl &&
            (identical(other.userResults, userResults) ||
                other.userResults == userResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userResults);

  /// Create a copy of UserResultCore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResultCoreImplCopyWith<_$UserResultCoreImpl> get copyWith =>
      __$$UserResultCoreImplCopyWithImpl<_$UserResultCoreImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResultCoreImplToJson(
      this,
    );
  }
}

abstract class _UserResultCore implements UserResultCore {
  const factory _UserResultCore(
      {@JsonKey(name: 'user_results')
      required final UserResults userResults}) = _$UserResultCoreImpl;

  factory _UserResultCore.fromJson(Map<String, dynamic> json) =
      _$UserResultCoreImpl.fromJson;

  @override
  @JsonKey(name: 'user_results')
  UserResults get userResults;

  /// Create a copy of UserResultCore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResultCoreImplCopyWith<_$UserResultCoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
