// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResponseData _$ProfileResponseDataFromJson(Map<String, dynamic> json) {
  return _ProfileResponseData.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponseData {
  @JsonKey(name: 'user_result_by_screen_name')
  UserResultByScreenName get userResultByScreenName =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileResponseDataCopyWith<ProfileResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseDataCopyWith<$Res> {
  factory $ProfileResponseDataCopyWith(
          ProfileResponseData value, $Res Function(ProfileResponseData) then) =
      _$ProfileResponseDataCopyWithImpl<$Res, ProfileResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_result_by_screen_name')
      UserResultByScreenName userResultByScreenName});

  $UserResultByScreenNameCopyWith<$Res> get userResultByScreenName;
}

/// @nodoc
class _$ProfileResponseDataCopyWithImpl<$Res, $Val extends ProfileResponseData>
    implements $ProfileResponseDataCopyWith<$Res> {
  _$ProfileResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userResultByScreenName = null,
  }) {
    return _then(_value.copyWith(
      userResultByScreenName: null == userResultByScreenName
          ? _value.userResultByScreenName
          : userResultByScreenName // ignore: cast_nullable_to_non_nullable
              as UserResultByScreenName,
    ) as $Val);
  }

  /// Create a copy of ProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultByScreenNameCopyWith<$Res> get userResultByScreenName {
    return $UserResultByScreenNameCopyWith<$Res>(_value.userResultByScreenName,
        (value) {
      return _then(_value.copyWith(userResultByScreenName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseDataImplCopyWith<$Res>
    implements $ProfileResponseDataCopyWith<$Res> {
  factory _$$ProfileResponseDataImplCopyWith(_$ProfileResponseDataImpl value,
          $Res Function(_$ProfileResponseDataImpl) then) =
      __$$ProfileResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_result_by_screen_name')
      UserResultByScreenName userResultByScreenName});

  @override
  $UserResultByScreenNameCopyWith<$Res> get userResultByScreenName;
}

/// @nodoc
class __$$ProfileResponseDataImplCopyWithImpl<$Res>
    extends _$ProfileResponseDataCopyWithImpl<$Res, _$ProfileResponseDataImpl>
    implements _$$ProfileResponseDataImplCopyWith<$Res> {
  __$$ProfileResponseDataImplCopyWithImpl(_$ProfileResponseDataImpl _value,
      $Res Function(_$ProfileResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userResultByScreenName = null,
  }) {
    return _then(_$ProfileResponseDataImpl(
      userResultByScreenName: null == userResultByScreenName
          ? _value.userResultByScreenName
          : userResultByScreenName // ignore: cast_nullable_to_non_nullable
              as UserResultByScreenName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseDataImpl implements _ProfileResponseData {
  const _$ProfileResponseDataImpl(
      {@JsonKey(name: 'user_result_by_screen_name')
      required this.userResultByScreenName});

  factory _$ProfileResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_result_by_screen_name')
  final UserResultByScreenName userResultByScreenName;

  @override
  String toString() {
    return 'ProfileResponseData(userResultByScreenName: $userResultByScreenName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseDataImpl &&
            (identical(other.userResultByScreenName, userResultByScreenName) ||
                other.userResultByScreenName == userResultByScreenName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userResultByScreenName);

  /// Create a copy of ProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseDataImplCopyWith<_$ProfileResponseDataImpl> get copyWith =>
      __$$ProfileResponseDataImplCopyWithImpl<_$ProfileResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponseData implements ProfileResponseData {
  const factory _ProfileResponseData(
          {@JsonKey(name: 'user_result_by_screen_name')
          required final UserResultByScreenName userResultByScreenName}) =
      _$ProfileResponseDataImpl;

  factory _ProfileResponseData.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_result_by_screen_name')
  UserResultByScreenName get userResultByScreenName;

  /// Create a copy of ProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileResponseDataImplCopyWith<_$ProfileResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
