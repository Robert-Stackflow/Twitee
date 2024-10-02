// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_result_by_screen_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResultByScreenName _$UserResultByScreenNameFromJson(
    Map<String, dynamic> json) {
  return _UserResultByScreenName.fromJson(json);
}

/// @nodoc
mixin _$UserResultByScreenName {
  String get id => throw _privateConstructorUsedError;
  UserResultByScreenNameResult get result => throw _privateConstructorUsedError;

  /// Serializes this UserResultByScreenName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResultByScreenName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResultByScreenNameCopyWith<UserResultByScreenName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResultByScreenNameCopyWith<$Res> {
  factory $UserResultByScreenNameCopyWith(UserResultByScreenName value,
          $Res Function(UserResultByScreenName) then) =
      _$UserResultByScreenNameCopyWithImpl<$Res, UserResultByScreenName>;
  @useResult
  $Res call({String id, UserResultByScreenNameResult result});

  $UserResultByScreenNameResultCopyWith<$Res> get result;
}

/// @nodoc
class _$UserResultByScreenNameCopyWithImpl<$Res,
        $Val extends UserResultByScreenName>
    implements $UserResultByScreenNameCopyWith<$Res> {
  _$UserResultByScreenNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResultByScreenName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserResultByScreenNameResult,
    ) as $Val);
  }

  /// Create a copy of UserResultByScreenName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultByScreenNameResultCopyWith<$Res> get result {
    return $UserResultByScreenNameResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResultByScreenNameImplCopyWith<$Res>
    implements $UserResultByScreenNameCopyWith<$Res> {
  factory _$$UserResultByScreenNameImplCopyWith(
          _$UserResultByScreenNameImpl value,
          $Res Function(_$UserResultByScreenNameImpl) then) =
      __$$UserResultByScreenNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, UserResultByScreenNameResult result});

  @override
  $UserResultByScreenNameResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$UserResultByScreenNameImplCopyWithImpl<$Res>
    extends _$UserResultByScreenNameCopyWithImpl<$Res,
        _$UserResultByScreenNameImpl>
    implements _$$UserResultByScreenNameImplCopyWith<$Res> {
  __$$UserResultByScreenNameImplCopyWithImpl(
      _$UserResultByScreenNameImpl _value,
      $Res Function(_$UserResultByScreenNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResultByScreenName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? result = null,
  }) {
    return _then(_$UserResultByScreenNameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserResultByScreenNameResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResultByScreenNameImpl implements _UserResultByScreenName {
  const _$UserResultByScreenNameImpl({required this.id, required this.result});

  factory _$UserResultByScreenNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResultByScreenNameImplFromJson(json);

  @override
  final String id;
  @override
  final UserResultByScreenNameResult result;

  @override
  String toString() {
    return 'UserResultByScreenName(id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResultByScreenNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, result);

  /// Create a copy of UserResultByScreenName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResultByScreenNameImplCopyWith<_$UserResultByScreenNameImpl>
      get copyWith => __$$UserResultByScreenNameImplCopyWithImpl<
          _$UserResultByScreenNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResultByScreenNameImplToJson(
      this,
    );
  }
}

abstract class _UserResultByScreenName implements UserResultByScreenName {
  const factory _UserResultByScreenName(
          {required final String id,
          required final UserResultByScreenNameResult result}) =
      _$UserResultByScreenNameImpl;

  factory _UserResultByScreenName.fromJson(Map<String, dynamic> json) =
      _$UserResultByScreenNameImpl.fromJson;

  @override
  String get id;
  @override
  UserResultByScreenNameResult get result;

  /// Create a copy of UserResultByScreenName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResultByScreenNameImplCopyWith<_$UserResultByScreenNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
