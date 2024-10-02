// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birdwatch_pivot_subtitle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdwatchPivotSubtitle _$BirdwatchPivotSubtitleFromJson(
    Map<String, dynamic> json) {
  return _BirdwatchPivotSubtitle.fromJson(json);
}

/// @nodoc
mixin _$BirdwatchPivotSubtitle {
  List<BirdwatchEntity> get entities => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this BirdwatchPivotSubtitle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdwatchPivotSubtitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdwatchPivotSubtitleCopyWith<BirdwatchPivotSubtitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdwatchPivotSubtitleCopyWith<$Res> {
  factory $BirdwatchPivotSubtitleCopyWith(BirdwatchPivotSubtitle value,
          $Res Function(BirdwatchPivotSubtitle) then) =
      _$BirdwatchPivotSubtitleCopyWithImpl<$Res, BirdwatchPivotSubtitle>;
  @useResult
  $Res call({List<BirdwatchEntity> entities, String text});
}

/// @nodoc
class _$BirdwatchPivotSubtitleCopyWithImpl<$Res,
        $Val extends BirdwatchPivotSubtitle>
    implements $BirdwatchPivotSubtitleCopyWith<$Res> {
  _$BirdwatchPivotSubtitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdwatchPivotSubtitle
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
              as List<BirdwatchEntity>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdwatchPivotSubtitleImplCopyWith<$Res>
    implements $BirdwatchPivotSubtitleCopyWith<$Res> {
  factory _$$BirdwatchPivotSubtitleImplCopyWith(
          _$BirdwatchPivotSubtitleImpl value,
          $Res Function(_$BirdwatchPivotSubtitleImpl) then) =
      __$$BirdwatchPivotSubtitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BirdwatchEntity> entities, String text});
}

/// @nodoc
class __$$BirdwatchPivotSubtitleImplCopyWithImpl<$Res>
    extends _$BirdwatchPivotSubtitleCopyWithImpl<$Res,
        _$BirdwatchPivotSubtitleImpl>
    implements _$$BirdwatchPivotSubtitleImplCopyWith<$Res> {
  __$$BirdwatchPivotSubtitleImplCopyWithImpl(
      _$BirdwatchPivotSubtitleImpl _value,
      $Res Function(_$BirdwatchPivotSubtitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdwatchPivotSubtitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? text = null,
  }) {
    return _then(_$BirdwatchPivotSubtitleImpl(
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<BirdwatchEntity>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdwatchPivotSubtitleImpl implements _BirdwatchPivotSubtitle {
  const _$BirdwatchPivotSubtitleImpl(
      {required final List<BirdwatchEntity> entities, required this.text})
      : _entities = entities;

  factory _$BirdwatchPivotSubtitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdwatchPivotSubtitleImplFromJson(json);

  final List<BirdwatchEntity> _entities;
  @override
  List<BirdwatchEntity> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final String text;

  @override
  String toString() {
    return 'BirdwatchPivotSubtitle(entities: $entities, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdwatchPivotSubtitleImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), text);

  /// Create a copy of BirdwatchPivotSubtitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdwatchPivotSubtitleImplCopyWith<_$BirdwatchPivotSubtitleImpl>
      get copyWith => __$$BirdwatchPivotSubtitleImplCopyWithImpl<
          _$BirdwatchPivotSubtitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdwatchPivotSubtitleImplToJson(
      this,
    );
  }
}

abstract class _BirdwatchPivotSubtitle implements BirdwatchPivotSubtitle {
  const factory _BirdwatchPivotSubtitle(
      {required final List<BirdwatchEntity> entities,
      required final String text}) = _$BirdwatchPivotSubtitleImpl;

  factory _BirdwatchPivotSubtitle.fromJson(Map<String, dynamic> json) =
      _$BirdwatchPivotSubtitleImpl.fromJson;

  @override
  List<BirdwatchEntity> get entities;
  @override
  String get text;

  /// Create a copy of BirdwatchPivotSubtitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdwatchPivotSubtitleImplCopyWith<_$BirdwatchPivotSubtitleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
