// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_verification_info_reason_description_entities_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVerificationInfoReasonDescriptionEntitiesRef
    _$UserVerificationInfoReasonDescriptionEntitiesRefFromJson(
        Map<String, dynamic> json) {
  return _UserVerificationInfoReasonDescriptionEntitiesRef.fromJson(json);
}

/// @nodoc
mixin _$UserVerificationInfoReasonDescriptionEntitiesRef {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_type')
  UserVerificationInfoReasonDescriptionEntitiesRefUrlType get urlType =>
      throw _privateConstructorUsedError;

  /// Serializes this UserVerificationInfoReasonDescriptionEntitiesRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserVerificationInfoReasonDescriptionEntitiesRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserVerificationInfoReasonDescriptionEntitiesRefCopyWith<
          UserVerificationInfoReasonDescriptionEntitiesRef>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationInfoReasonDescriptionEntitiesRefCopyWith<$Res> {
  factory $UserVerificationInfoReasonDescriptionEntitiesRefCopyWith(
          UserVerificationInfoReasonDescriptionEntitiesRef value,
          $Res Function(UserVerificationInfoReasonDescriptionEntitiesRef)
              then) =
      _$UserVerificationInfoReasonDescriptionEntitiesRefCopyWithImpl<$Res,
          UserVerificationInfoReasonDescriptionEntitiesRef>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'url_type')
      UserVerificationInfoReasonDescriptionEntitiesRefUrlType urlType});
}

/// @nodoc
class _$UserVerificationInfoReasonDescriptionEntitiesRefCopyWithImpl<$Res,
        $Val extends UserVerificationInfoReasonDescriptionEntitiesRef>
    implements $UserVerificationInfoReasonDescriptionEntitiesRefCopyWith<$Res> {
  _$UserVerificationInfoReasonDescriptionEntitiesRefCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationInfoReasonDescriptionEntitiesRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfoReasonDescriptionEntitiesRefUrlType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWith<
        $Res>
    implements $UserVerificationInfoReasonDescriptionEntitiesRefCopyWith<$Res> {
  factory _$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWith(
          _$UserVerificationInfoReasonDescriptionEntitiesRefImpl value,
          $Res Function(_$UserVerificationInfoReasonDescriptionEntitiesRefImpl)
              then) =
      __$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'url_type')
      UserVerificationInfoReasonDescriptionEntitiesRefUrlType urlType});
}

/// @nodoc
class __$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWithImpl<$Res>
    extends _$UserVerificationInfoReasonDescriptionEntitiesRefCopyWithImpl<$Res,
        _$UserVerificationInfoReasonDescriptionEntitiesRefImpl>
    implements
        _$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWith<$Res> {
  __$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWithImpl(
      _$UserVerificationInfoReasonDescriptionEntitiesRefImpl _value,
      $Res Function(_$UserVerificationInfoReasonDescriptionEntitiesRefImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationInfoReasonDescriptionEntitiesRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_$UserVerificationInfoReasonDescriptionEntitiesRefImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as UserVerificationInfoReasonDescriptionEntitiesRefUrlType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVerificationInfoReasonDescriptionEntitiesRefImpl
    implements _UserVerificationInfoReasonDescriptionEntitiesRef {
  const _$UserVerificationInfoReasonDescriptionEntitiesRefImpl(
      {required this.url, @JsonKey(name: 'url_type') required this.urlType});

  factory _$UserVerificationInfoReasonDescriptionEntitiesRefImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserVerificationInfoReasonDescriptionEntitiesRefImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: 'url_type')
  final UserVerificationInfoReasonDescriptionEntitiesRefUrlType urlType;

  @override
  String toString() {
    return 'UserVerificationInfoReasonDescriptionEntitiesRef(url: $url, urlType: $urlType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerificationInfoReasonDescriptionEntitiesRefImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlType, urlType) || other.urlType == urlType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, urlType);

  /// Create a copy of UserVerificationInfoReasonDescriptionEntitiesRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWith<
          _$UserVerificationInfoReasonDescriptionEntitiesRefImpl>
      get copyWith =>
          __$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWithImpl<
                  _$UserVerificationInfoReasonDescriptionEntitiesRefImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVerificationInfoReasonDescriptionEntitiesRefImplToJson(
      this,
    );
  }
}

abstract class _UserVerificationInfoReasonDescriptionEntitiesRef
    implements UserVerificationInfoReasonDescriptionEntitiesRef {
  const factory _UserVerificationInfoReasonDescriptionEntitiesRef(
      {required final String url,
      @JsonKey(name: 'url_type')
      required final UserVerificationInfoReasonDescriptionEntitiesRefUrlType
          urlType}) = _$UserVerificationInfoReasonDescriptionEntitiesRefImpl;

  factory _UserVerificationInfoReasonDescriptionEntitiesRef.fromJson(
          Map<String, dynamic> json) =
      _$UserVerificationInfoReasonDescriptionEntitiesRefImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: 'url_type')
  UserVerificationInfoReasonDescriptionEntitiesRefUrlType get urlType;

  /// Create a copy of UserVerificationInfoReasonDescriptionEntitiesRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserVerificationInfoReasonDescriptionEntitiesRefImplCopyWith<
          _$UserVerificationInfoReasonDescriptionEntitiesRefImpl>
      get copyWith => throw _privateConstructorUsedError;
}
