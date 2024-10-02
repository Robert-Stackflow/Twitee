// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_professional.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfessional _$UserProfessionalFromJson(Map<String, dynamic> json) {
  return _UserProfessional.fromJson(json);
}

/// @nodoc
mixin _$UserProfessional {
  List<UserProfessionalCategory> get category =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'professional_type')
  UserProfessionalProfessionalType get professionalType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;

  /// Serializes this UserProfessional to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfessional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfessionalCopyWith<UserProfessional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfessionalCopyWith<$Res> {
  factory $UserProfessionalCopyWith(
          UserProfessional value, $Res Function(UserProfessional) then) =
      _$UserProfessionalCopyWithImpl<$Res, UserProfessional>;
  @useResult
  $Res call(
      {List<UserProfessionalCategory> category,
      @JsonKey(name: 'professional_type')
      UserProfessionalProfessionalType professionalType,
      @JsonKey(name: 'rest_id') String restId});
}

/// @nodoc
class _$UserProfessionalCopyWithImpl<$Res, $Val extends UserProfessional>
    implements $UserProfessionalCopyWith<$Res> {
  _$UserProfessionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfessional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? professionalType = null,
    Object? restId = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<UserProfessionalCategory>,
      professionalType: null == professionalType
          ? _value.professionalType
          : professionalType // ignore: cast_nullable_to_non_nullable
              as UserProfessionalProfessionalType,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfessionalImplCopyWith<$Res>
    implements $UserProfessionalCopyWith<$Res> {
  factory _$$UserProfessionalImplCopyWith(_$UserProfessionalImpl value,
          $Res Function(_$UserProfessionalImpl) then) =
      __$$UserProfessionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserProfessionalCategory> category,
      @JsonKey(name: 'professional_type')
      UserProfessionalProfessionalType professionalType,
      @JsonKey(name: 'rest_id') String restId});
}

/// @nodoc
class __$$UserProfessionalImplCopyWithImpl<$Res>
    extends _$UserProfessionalCopyWithImpl<$Res, _$UserProfessionalImpl>
    implements _$$UserProfessionalImplCopyWith<$Res> {
  __$$UserProfessionalImplCopyWithImpl(_$UserProfessionalImpl _value,
      $Res Function(_$UserProfessionalImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfessional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? professionalType = null,
    Object? restId = null,
  }) {
    return _then(_$UserProfessionalImpl(
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<UserProfessionalCategory>,
      professionalType: null == professionalType
          ? _value.professionalType
          : professionalType // ignore: cast_nullable_to_non_nullable
              as UserProfessionalProfessionalType,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfessionalImpl implements _UserProfessional {
  const _$UserProfessionalImpl(
      {required final List<UserProfessionalCategory> category,
      @JsonKey(name: 'professional_type') required this.professionalType,
      @JsonKey(name: 'rest_id') required this.restId})
      : _category = category;

  factory _$UserProfessionalImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfessionalImplFromJson(json);

  final List<UserProfessionalCategory> _category;
  @override
  List<UserProfessionalCategory> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  @JsonKey(name: 'professional_type')
  final UserProfessionalProfessionalType professionalType;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;

  @override
  String toString() {
    return 'UserProfessional(category: $category, professionalType: $professionalType, restId: $restId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfessionalImpl &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.professionalType, professionalType) ||
                other.professionalType == professionalType) &&
            (identical(other.restId, restId) || other.restId == restId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_category), professionalType, restId);

  /// Create a copy of UserProfessional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfessionalImplCopyWith<_$UserProfessionalImpl> get copyWith =>
      __$$UserProfessionalImplCopyWithImpl<_$UserProfessionalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfessionalImplToJson(
      this,
    );
  }
}

abstract class _UserProfessional implements UserProfessional {
  const factory _UserProfessional(
          {required final List<UserProfessionalCategory> category,
          @JsonKey(name: 'professional_type')
          required final UserProfessionalProfessionalType professionalType,
          @JsonKey(name: 'rest_id') required final String restId}) =
      _$UserProfessionalImpl;

  factory _UserProfessional.fromJson(Map<String, dynamic> json) =
      _$UserProfessionalImpl.fromJson;

  @override
  List<UserProfessionalCategory> get category;
  @override
  @JsonKey(name: 'professional_type')
  UserProfessionalProfessionalType get professionalType;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;

  /// Create a copy of UserProfessional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfessionalImplCopyWith<_$UserProfessionalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
