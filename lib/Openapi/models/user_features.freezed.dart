// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFeatures _$UserFeaturesFromJson(Map<String, dynamic> json) {
  return _UserFeatures.fromJson(json);
}

/// @nodoc
mixin _$UserFeatures {
  @JsonKey(name: 'mediatool_studio_library')
  bool get mediatoolStudioLibrary => throw _privateConstructorUsedError;

  /// Serializes this UserFeatures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFeaturesCopyWith<UserFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFeaturesCopyWith<$Res> {
  factory $UserFeaturesCopyWith(
          UserFeatures value, $Res Function(UserFeatures) then) =
      _$UserFeaturesCopyWithImpl<$Res, UserFeatures>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mediatool_studio_library') bool mediatoolStudioLibrary});
}

/// @nodoc
class _$UserFeaturesCopyWithImpl<$Res, $Val extends UserFeatures>
    implements $UserFeaturesCopyWith<$Res> {
  _$UserFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediatoolStudioLibrary = null,
  }) {
    return _then(_value.copyWith(
      mediatoolStudioLibrary: null == mediatoolStudioLibrary
          ? _value.mediatoolStudioLibrary
          : mediatoolStudioLibrary // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFeaturesImplCopyWith<$Res>
    implements $UserFeaturesCopyWith<$Res> {
  factory _$$UserFeaturesImplCopyWith(
          _$UserFeaturesImpl value, $Res Function(_$UserFeaturesImpl) then) =
      __$$UserFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mediatool_studio_library') bool mediatoolStudioLibrary});
}

/// @nodoc
class __$$UserFeaturesImplCopyWithImpl<$Res>
    extends _$UserFeaturesCopyWithImpl<$Res, _$UserFeaturesImpl>
    implements _$$UserFeaturesImplCopyWith<$Res> {
  __$$UserFeaturesImplCopyWithImpl(
      _$UserFeaturesImpl _value, $Res Function(_$UserFeaturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediatoolStudioLibrary = null,
  }) {
    return _then(_$UserFeaturesImpl(
      mediatoolStudioLibrary: null == mediatoolStudioLibrary
          ? _value.mediatoolStudioLibrary
          : mediatoolStudioLibrary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFeaturesImpl implements _UserFeatures {
  const _$UserFeaturesImpl(
      {@JsonKey(name: 'mediatool_studio_library')
      required this.mediatoolStudioLibrary});

  factory _$UserFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFeaturesImplFromJson(json);

  @override
  @JsonKey(name: 'mediatool_studio_library')
  final bool mediatoolStudioLibrary;

  @override
  String toString() {
    return 'UserFeatures(mediatoolStudioLibrary: $mediatoolStudioLibrary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFeaturesImpl &&
            (identical(other.mediatoolStudioLibrary, mediatoolStudioLibrary) ||
                other.mediatoolStudioLibrary == mediatoolStudioLibrary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mediatoolStudioLibrary);

  /// Create a copy of UserFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFeaturesImplCopyWith<_$UserFeaturesImpl> get copyWith =>
      __$$UserFeaturesImplCopyWithImpl<_$UserFeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFeaturesImplToJson(
      this,
    );
  }
}

abstract class _UserFeatures implements UserFeatures {
  const factory _UserFeatures(
      {@JsonKey(name: 'mediatool_studio_library')
      required final bool mediatoolStudioLibrary}) = _$UserFeaturesImpl;

  factory _UserFeatures.fromJson(Map<String, dynamic> json) =
      _$UserFeaturesImpl.fromJson;

  @override
  @JsonKey(name: 'mediatool_studio_library')
  bool get mediatoolStudioLibrary;

  /// Create a copy of UserFeatures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFeaturesImplCopyWith<_$UserFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
