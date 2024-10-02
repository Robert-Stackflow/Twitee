// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowResponseData _$FollowResponseDataFromJson(Map<String, dynamic> json) {
  return _FollowResponseData.fromJson(json);
}

/// @nodoc
mixin _$FollowResponseData {
  FollowResponseUser get user => throw _privateConstructorUsedError;

  /// Serializes this FollowResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowResponseDataCopyWith<FollowResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowResponseDataCopyWith<$Res> {
  factory $FollowResponseDataCopyWith(
          FollowResponseData value, $Res Function(FollowResponseData) then) =
      _$FollowResponseDataCopyWithImpl<$Res, FollowResponseData>;
  @useResult
  $Res call({FollowResponseUser user});

  $FollowResponseUserCopyWith<$Res> get user;
}

/// @nodoc
class _$FollowResponseDataCopyWithImpl<$Res, $Val extends FollowResponseData>
    implements $FollowResponseDataCopyWith<$Res> {
  _$FollowResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FollowResponseUser,
    ) as $Val);
  }

  /// Create a copy of FollowResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FollowResponseUserCopyWith<$Res> get user {
    return $FollowResponseUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowResponseDataImplCopyWith<$Res>
    implements $FollowResponseDataCopyWith<$Res> {
  factory _$$FollowResponseDataImplCopyWith(_$FollowResponseDataImpl value,
          $Res Function(_$FollowResponseDataImpl) then) =
      __$$FollowResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FollowResponseUser user});

  @override
  $FollowResponseUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$FollowResponseDataImplCopyWithImpl<$Res>
    extends _$FollowResponseDataCopyWithImpl<$Res, _$FollowResponseDataImpl>
    implements _$$FollowResponseDataImplCopyWith<$Res> {
  __$$FollowResponseDataImplCopyWithImpl(_$FollowResponseDataImpl _value,
      $Res Function(_$FollowResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$FollowResponseDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FollowResponseUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowResponseDataImpl implements _FollowResponseData {
  const _$FollowResponseDataImpl({required this.user});

  factory _$FollowResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowResponseDataImplFromJson(json);

  @override
  final FollowResponseUser user;

  @override
  String toString() {
    return 'FollowResponseData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowResponseDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of FollowResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowResponseDataImplCopyWith<_$FollowResponseDataImpl> get copyWith =>
      __$$FollowResponseDataImplCopyWithImpl<_$FollowResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowResponseDataImplToJson(
      this,
    );
  }
}

abstract class _FollowResponseData implements FollowResponseData {
  const factory _FollowResponseData({required final FollowResponseUser user}) =
      _$FollowResponseDataImpl;

  factory _FollowResponseData.fromJson(Map<String, dynamic> json) =
      _$FollowResponseDataImpl.fromJson;

  @override
  FollowResponseUser get user;

  /// Create a copy of FollowResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowResponseDataImplCopyWith<_$FollowResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
