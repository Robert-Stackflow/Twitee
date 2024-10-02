// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_result_by_screen_name_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResultByScreenNameResult _$UserResultByScreenNameResultFromJson(
    Map<String, dynamic> json) {
  return _UserResultByScreenNameResult.fromJson(json);
}

/// @nodoc
mixin _$UserResultByScreenNameResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  UserResultByScreenNameLegacy get legacy => throw _privateConstructorUsedError;
  dynamic get profilemodules => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;

  /// Serializes this UserResultByScreenNameResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResultByScreenNameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResultByScreenNameResultCopyWith<UserResultByScreenNameResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResultByScreenNameResultCopyWith<$Res> {
  factory $UserResultByScreenNameResultCopyWith(
          UserResultByScreenNameResult value,
          $Res Function(UserResultByScreenNameResult) then) =
      _$UserResultByScreenNameResultCopyWithImpl<$Res,
          UserResultByScreenNameResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String id,
      UserResultByScreenNameLegacy legacy,
      dynamic profilemodules,
      @JsonKey(name: 'rest_id') String restId});

  $UserResultByScreenNameLegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class _$UserResultByScreenNameResultCopyWithImpl<$Res,
        $Val extends UserResultByScreenNameResult>
    implements $UserResultByScreenNameResultCopyWith<$Res> {
  _$UserResultByScreenNameResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResultByScreenNameResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? id = null,
    Object? legacy = null,
    Object? profilemodules = freezed,
    Object? restId = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as UserResultByScreenNameLegacy,
      profilemodules: freezed == profilemodules
          ? _value.profilemodules
          : profilemodules // ignore: cast_nullable_to_non_nullable
              as dynamic,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of UserResultByScreenNameResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultByScreenNameLegacyCopyWith<$Res> get legacy {
    return $UserResultByScreenNameLegacyCopyWith<$Res>(_value.legacy, (value) {
      return _then(_value.copyWith(legacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResultByScreenNameResultImplCopyWith<$Res>
    implements $UserResultByScreenNameResultCopyWith<$Res> {
  factory _$$UserResultByScreenNameResultImplCopyWith(
          _$UserResultByScreenNameResultImpl value,
          $Res Function(_$UserResultByScreenNameResultImpl) then) =
      __$$UserResultByScreenNameResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String id,
      UserResultByScreenNameLegacy legacy,
      dynamic profilemodules,
      @JsonKey(name: 'rest_id') String restId});

  @override
  $UserResultByScreenNameLegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class __$$UserResultByScreenNameResultImplCopyWithImpl<$Res>
    extends _$UserResultByScreenNameResultCopyWithImpl<$Res,
        _$UserResultByScreenNameResultImpl>
    implements _$$UserResultByScreenNameResultImplCopyWith<$Res> {
  __$$UserResultByScreenNameResultImplCopyWithImpl(
      _$UserResultByScreenNameResultImpl _value,
      $Res Function(_$UserResultByScreenNameResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResultByScreenNameResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? id = null,
    Object? legacy = null,
    Object? profilemodules = freezed,
    Object? restId = null,
  }) {
    return _then(_$UserResultByScreenNameResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as UserResultByScreenNameLegacy,
      profilemodules: freezed == profilemodules
          ? _value.profilemodules
          : profilemodules // ignore: cast_nullable_to_non_nullable
              as dynamic,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResultByScreenNameResultImpl
    implements _UserResultByScreenNameResult {
  const _$UserResultByScreenNameResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.id,
      required this.legacy,
      required this.profilemodules,
      @JsonKey(name: 'rest_id') required this.restId});

  factory _$UserResultByScreenNameResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserResultByScreenNameResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final String id;
  @override
  final UserResultByScreenNameLegacy legacy;
  @override
  final dynamic profilemodules;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;

  @override
  String toString() {
    return 'UserResultByScreenNameResult(privateTypename: $privateTypename, id: $id, legacy: $legacy, profilemodules: $profilemodules, restId: $restId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResultByScreenNameResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.legacy, legacy) || other.legacy == legacy) &&
            const DeepCollectionEquality()
                .equals(other.profilemodules, profilemodules) &&
            (identical(other.restId, restId) || other.restId == restId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, id, legacy,
      const DeepCollectionEquality().hash(profilemodules), restId);

  /// Create a copy of UserResultByScreenNameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResultByScreenNameResultImplCopyWith<
          _$UserResultByScreenNameResultImpl>
      get copyWith => __$$UserResultByScreenNameResultImplCopyWithImpl<
          _$UserResultByScreenNameResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResultByScreenNameResultImplToJson(
      this,
    );
  }
}

abstract class _UserResultByScreenNameResult
    implements UserResultByScreenNameResult {
  const factory _UserResultByScreenNameResult(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final String id,
          required final UserResultByScreenNameLegacy legacy,
          required final dynamic profilemodules,
          @JsonKey(name: 'rest_id') required final String restId}) =
      _$UserResultByScreenNameResultImpl;

  factory _UserResultByScreenNameResult.fromJson(Map<String, dynamic> json) =
      _$UserResultByScreenNameResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  String get id;
  @override
  UserResultByScreenNameLegacy get legacy;
  @override
  dynamic get profilemodules;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;

  /// Create a copy of UserResultByScreenNameResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResultByScreenNameResultImplCopyWith<
          _$UserResultByScreenNameResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
