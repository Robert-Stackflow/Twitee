// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_verification_info_reason_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVerificationInfoReasonDescription
    _$UserVerificationInfoReasonDescriptionFromJson(Map<String, dynamic> json) {
  return _UserVerificationInfoReasonDescription.fromJson(json);
}

/// @nodoc
mixin _$UserVerificationInfoReasonDescription {
  List<UserVerificationInfoReasonDescriptionEntities> get entities =>
      throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this UserVerificationInfoReasonDescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserVerificationInfoReasonDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserVerificationInfoReasonDescriptionCopyWith<
          UserVerificationInfoReasonDescription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationInfoReasonDescriptionCopyWith<$Res> {
  factory $UserVerificationInfoReasonDescriptionCopyWith(
          UserVerificationInfoReasonDescription value,
          $Res Function(UserVerificationInfoReasonDescription) then) =
      _$UserVerificationInfoReasonDescriptionCopyWithImpl<$Res,
          UserVerificationInfoReasonDescription>;
  @useResult
  $Res call(
      {List<UserVerificationInfoReasonDescriptionEntities> entities,
      String text});
}

/// @nodoc
class _$UserVerificationInfoReasonDescriptionCopyWithImpl<$Res,
        $Val extends UserVerificationInfoReasonDescription>
    implements $UserVerificationInfoReasonDescriptionCopyWith<$Res> {
  _$UserVerificationInfoReasonDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationInfoReasonDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<UserVerificationInfoReasonDescriptionEntities>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserVerificationInfoReasonDescriptionImplCopyWith<$Res>
    implements $UserVerificationInfoReasonDescriptionCopyWith<$Res> {
  factory _$$UserVerificationInfoReasonDescriptionImplCopyWith(
          _$UserVerificationInfoReasonDescriptionImpl value,
          $Res Function(_$UserVerificationInfoReasonDescriptionImpl) then) =
      __$$UserVerificationInfoReasonDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserVerificationInfoReasonDescriptionEntities> entities,
      String text});
}

/// @nodoc
class __$$UserVerificationInfoReasonDescriptionImplCopyWithImpl<$Res>
    extends _$UserVerificationInfoReasonDescriptionCopyWithImpl<$Res,
        _$UserVerificationInfoReasonDescriptionImpl>
    implements _$$UserVerificationInfoReasonDescriptionImplCopyWith<$Res> {
  __$$UserVerificationInfoReasonDescriptionImplCopyWithImpl(
      _$UserVerificationInfoReasonDescriptionImpl _value,
      $Res Function(_$UserVerificationInfoReasonDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationInfoReasonDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? text = null,
  }) {
    return _then(_$UserVerificationInfoReasonDescriptionImpl(
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<UserVerificationInfoReasonDescriptionEntities>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVerificationInfoReasonDescriptionImpl
    implements _UserVerificationInfoReasonDescription {
  const _$UserVerificationInfoReasonDescriptionImpl(
      {required final List<UserVerificationInfoReasonDescriptionEntities>
          entities,
      required this.text})
      : _entities = entities;

  factory _$UserVerificationInfoReasonDescriptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserVerificationInfoReasonDescriptionImplFromJson(json);

  final List<UserVerificationInfoReasonDescriptionEntities> _entities;
  @override
  List<UserVerificationInfoReasonDescriptionEntities> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final String text;

  @override
  String toString() {
    return 'UserVerificationInfoReasonDescription(entities: $entities, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerificationInfoReasonDescriptionImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), text);

  /// Create a copy of UserVerificationInfoReasonDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerificationInfoReasonDescriptionImplCopyWith<
          _$UserVerificationInfoReasonDescriptionImpl>
      get copyWith => __$$UserVerificationInfoReasonDescriptionImplCopyWithImpl<
          _$UserVerificationInfoReasonDescriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVerificationInfoReasonDescriptionImplToJson(
      this,
    );
  }
}

abstract class _UserVerificationInfoReasonDescription
    implements UserVerificationInfoReasonDescription {
  const factory _UserVerificationInfoReasonDescription(
          {required final List<UserVerificationInfoReasonDescriptionEntities>
              entities,
          required final String text}) =
      _$UserVerificationInfoReasonDescriptionImpl;

  factory _UserVerificationInfoReasonDescription.fromJson(
          Map<String, dynamic> json) =
      _$UserVerificationInfoReasonDescriptionImpl.fromJson;

  @override
  List<UserVerificationInfoReasonDescriptionEntities> get entities;
  @override
  String get text;

  /// Create a copy of UserVerificationInfoReasonDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserVerificationInfoReasonDescriptionImplCopyWith<
          _$UserVerificationInfoReasonDescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
