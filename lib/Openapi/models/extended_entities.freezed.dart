// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtendedEntities _$ExtendedEntitiesFromJson(Map<String, dynamic> json) {
  return _ExtendedEntities.fromJson(json);
}

/// @nodoc
mixin _$ExtendedEntities {
  List<MediaExtended> get media => throw _privateConstructorUsedError;

  /// Serializes this ExtendedEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtendedEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtendedEntitiesCopyWith<ExtendedEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendedEntitiesCopyWith<$Res> {
  factory $ExtendedEntitiesCopyWith(
          ExtendedEntities value, $Res Function(ExtendedEntities) then) =
      _$ExtendedEntitiesCopyWithImpl<$Res, ExtendedEntities>;
  @useResult
  $Res call({List<MediaExtended> media});
}

/// @nodoc
class _$ExtendedEntitiesCopyWithImpl<$Res, $Val extends ExtendedEntities>
    implements $ExtendedEntitiesCopyWith<$Res> {
  _$ExtendedEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtendedEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaExtended>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtendedEntitiesImplCopyWith<$Res>
    implements $ExtendedEntitiesCopyWith<$Res> {
  factory _$$ExtendedEntitiesImplCopyWith(_$ExtendedEntitiesImpl value,
          $Res Function(_$ExtendedEntitiesImpl) then) =
      __$$ExtendedEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MediaExtended> media});
}

/// @nodoc
class __$$ExtendedEntitiesImplCopyWithImpl<$Res>
    extends _$ExtendedEntitiesCopyWithImpl<$Res, _$ExtendedEntitiesImpl>
    implements _$$ExtendedEntitiesImplCopyWith<$Res> {
  __$$ExtendedEntitiesImplCopyWithImpl(_$ExtendedEntitiesImpl _value,
      $Res Function(_$ExtendedEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtendedEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$ExtendedEntitiesImpl(
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaExtended>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtendedEntitiesImpl implements _ExtendedEntities {
  const _$ExtendedEntitiesImpl({required final List<MediaExtended> media})
      : _media = media;

  factory _$ExtendedEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtendedEntitiesImplFromJson(json);

  final List<MediaExtended> _media;
  @override
  List<MediaExtended> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'ExtendedEntities(media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedEntitiesImpl &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  /// Create a copy of ExtendedEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendedEntitiesImplCopyWith<_$ExtendedEntitiesImpl> get copyWith =>
      __$$ExtendedEntitiesImplCopyWithImpl<_$ExtendedEntitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtendedEntitiesImplToJson(
      this,
    );
  }
}

abstract class _ExtendedEntities implements ExtendedEntities {
  const factory _ExtendedEntities({required final List<MediaExtended> media}) =
      _$ExtendedEntitiesImpl;

  factory _ExtendedEntities.fromJson(Map<String, dynamic> json) =
      _$ExtendedEntitiesImpl.fromJson;

  @override
  List<MediaExtended> get media;

  /// Create a copy of ExtendedEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtendedEntitiesImplCopyWith<_$ExtendedEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
