// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersResponseData _$UsersResponseDataFromJson(Map<String, dynamic> json) {
  return _UsersResponseData.fromJson(json);
}

/// @nodoc
mixin _$UsersResponseData {
  List<UserResults> get users => throw _privateConstructorUsedError;

  /// Serializes this UsersResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersResponseDataCopyWith<UsersResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseDataCopyWith<$Res> {
  factory $UsersResponseDataCopyWith(
          UsersResponseData value, $Res Function(UsersResponseData) then) =
      _$UsersResponseDataCopyWithImpl<$Res, UsersResponseData>;
  @useResult
  $Res call({List<UserResults> users});
}

/// @nodoc
class _$UsersResponseDataCopyWithImpl<$Res, $Val extends UsersResponseData>
    implements $UsersResponseDataCopyWith<$Res> {
  _$UsersResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersResponseDataImplCopyWith<$Res>
    implements $UsersResponseDataCopyWith<$Res> {
  factory _$$UsersResponseDataImplCopyWith(_$UsersResponseDataImpl value,
          $Res Function(_$UsersResponseDataImpl) then) =
      __$$UsersResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserResults> users});
}

/// @nodoc
class __$$UsersResponseDataImplCopyWithImpl<$Res>
    extends _$UsersResponseDataCopyWithImpl<$Res, _$UsersResponseDataImpl>
    implements _$$UsersResponseDataImplCopyWith<$Res> {
  __$$UsersResponseDataImplCopyWithImpl(_$UsersResponseDataImpl _value,
      $Res Function(_$UsersResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersResponseDataImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersResponseDataImpl implements _UsersResponseData {
  const _$UsersResponseDataImpl({required final List<UserResults> users})
      : _users = users;

  factory _$UsersResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersResponseDataImplFromJson(json);

  final List<UserResults> _users;
  @override
  List<UserResults> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersResponseData(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersResponseDataImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of UsersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersResponseDataImplCopyWith<_$UsersResponseDataImpl> get copyWith =>
      __$$UsersResponseDataImplCopyWithImpl<_$UsersResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UsersResponseData implements UsersResponseData {
  const factory _UsersResponseData({required final List<UserResults> users}) =
      _$UsersResponseDataImpl;

  factory _UsersResponseData.fromJson(Map<String, dynamic> json) =
      _$UsersResponseDataImpl.fromJson;

  @override
  List<UserResults> get users;

  /// Create a copy of UsersResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersResponseDataImplCopyWith<_$UsersResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
