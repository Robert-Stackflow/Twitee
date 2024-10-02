// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_professional_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfessionalCategory _$UserProfessionalCategoryFromJson(
    Map<String, dynamic> json) {
  return _UserProfessionalCategory.fromJson(json);
}

/// @nodoc
mixin _$UserProfessionalCategory {
  @JsonKey(name: 'icon_name')
  String get iconName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this UserProfessionalCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfessionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfessionalCategoryCopyWith<UserProfessionalCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfessionalCategoryCopyWith<$Res> {
  factory $UserProfessionalCategoryCopyWith(UserProfessionalCategory value,
          $Res Function(UserProfessionalCategory) then) =
      _$UserProfessionalCategoryCopyWithImpl<$Res, UserProfessionalCategory>;
  @useResult
  $Res call({@JsonKey(name: 'icon_name') String iconName, int id, String name});
}

/// @nodoc
class _$UserProfessionalCategoryCopyWithImpl<$Res,
        $Val extends UserProfessionalCategory>
    implements $UserProfessionalCategoryCopyWith<$Res> {
  _$UserProfessionalCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfessionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconName = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfessionalCategoryImplCopyWith<$Res>
    implements $UserProfessionalCategoryCopyWith<$Res> {
  factory _$$UserProfessionalCategoryImplCopyWith(
          _$UserProfessionalCategoryImpl value,
          $Res Function(_$UserProfessionalCategoryImpl) then) =
      __$$UserProfessionalCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'icon_name') String iconName, int id, String name});
}

/// @nodoc
class __$$UserProfessionalCategoryImplCopyWithImpl<$Res>
    extends _$UserProfessionalCategoryCopyWithImpl<$Res,
        _$UserProfessionalCategoryImpl>
    implements _$$UserProfessionalCategoryImplCopyWith<$Res> {
  __$$UserProfessionalCategoryImplCopyWithImpl(
      _$UserProfessionalCategoryImpl _value,
      $Res Function(_$UserProfessionalCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfessionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconName = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$UserProfessionalCategoryImpl(
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfessionalCategoryImpl implements _UserProfessionalCategory {
  const _$UserProfessionalCategoryImpl(
      {@JsonKey(name: 'icon_name') required this.iconName,
      required this.id,
      required this.name});

  factory _$UserProfessionalCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfessionalCategoryImplFromJson(json);

  @override
  @JsonKey(name: 'icon_name')
  final String iconName;
  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'UserProfessionalCategory(iconName: $iconName, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfessionalCategoryImpl &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iconName, id, name);

  /// Create a copy of UserProfessionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfessionalCategoryImplCopyWith<_$UserProfessionalCategoryImpl>
      get copyWith => __$$UserProfessionalCategoryImplCopyWithImpl<
          _$UserProfessionalCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfessionalCategoryImplToJson(
      this,
    );
  }
}

abstract class _UserProfessionalCategory implements UserProfessionalCategory {
  const factory _UserProfessionalCategory(
      {@JsonKey(name: 'icon_name') required final String iconName,
      required final int id,
      required final String name}) = _$UserProfessionalCategoryImpl;

  factory _UserProfessionalCategory.fromJson(Map<String, dynamic> json) =
      _$UserProfessionalCategoryImpl.fromJson;

  @override
  @JsonKey(name: 'icon_name')
  String get iconName;
  @override
  int get id;
  @override
  String get name;

  /// Create a copy of UserProfessionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfessionalCategoryImplCopyWith<_$UserProfessionalCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
