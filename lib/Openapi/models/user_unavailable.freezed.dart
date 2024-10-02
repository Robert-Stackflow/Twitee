// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_unavailable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserUnavailable _$UserUnavailableFromJson(Map<String, dynamic> json) {
  return _UserUnavailable.fromJson(json);
}

/// @nodoc
mixin _$UserUnavailable {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this UserUnavailable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUnavailableCopyWith<UserUnavailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUnavailableCopyWith<$Res> {
  factory $UserUnavailableCopyWith(
          UserUnavailable value, $Res Function(UserUnavailable) then) =
      _$UserUnavailableCopyWithImpl<$Res, UserUnavailable>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String message,
      String reason});
}

/// @nodoc
class _$UserUnavailableCopyWithImpl<$Res, $Val extends UserUnavailable>
    implements $UserUnavailableCopyWith<$Res> {
  _$UserUnavailableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? message = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUnavailableImplCopyWith<$Res>
    implements $UserUnavailableCopyWith<$Res> {
  factory _$$UserUnavailableImplCopyWith(_$UserUnavailableImpl value,
          $Res Function(_$UserUnavailableImpl) then) =
      __$$UserUnavailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String message,
      String reason});
}

/// @nodoc
class __$$UserUnavailableImplCopyWithImpl<$Res>
    extends _$UserUnavailableCopyWithImpl<$Res, _$UserUnavailableImpl>
    implements _$$UserUnavailableImplCopyWith<$Res> {
  __$$UserUnavailableImplCopyWithImpl(
      _$UserUnavailableImpl _value, $Res Function(_$UserUnavailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? message = null,
    Object? reason = null,
  }) {
    return _then(_$UserUnavailableImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUnavailableImpl implements _UserUnavailable {
  const _$UserUnavailableImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.message,
      required this.reason});

  factory _$UserUnavailableImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUnavailableImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final String message;
  @override
  final String reason;

  @override
  String toString() {
    return 'UserUnavailable(privateTypename: $privateTypename, message: $message, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUnavailableImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, privateTypename, message, reason);

  /// Create a copy of UserUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUnavailableImplCopyWith<_$UserUnavailableImpl> get copyWith =>
      __$$UserUnavailableImplCopyWithImpl<_$UserUnavailableImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUnavailableImplToJson(
      this,
    );
  }
}

abstract class _UserUnavailable implements UserUnavailable {
  const factory _UserUnavailable(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final String message,
      required final String reason}) = _$UserUnavailableImpl;

  factory _UserUnavailable.fromJson(Map<String, dynamic> json) =
      _$UserUnavailableImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  String get message;
  @override
  String get reason;

  /// Create a copy of UserUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUnavailableImplCopyWith<_$UserUnavailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
