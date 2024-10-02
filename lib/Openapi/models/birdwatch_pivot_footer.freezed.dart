// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birdwatch_pivot_footer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdwatchPivotFooter _$BirdwatchPivotFooterFromJson(Map<String, dynamic> json) {
  return _BirdwatchPivotFooter.fromJson(json);
}

/// @nodoc
mixin _$BirdwatchPivotFooter {
  List<BirdwatchEntity> get entities => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this BirdwatchPivotFooter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdwatchPivotFooter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdwatchPivotFooterCopyWith<BirdwatchPivotFooter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdwatchPivotFooterCopyWith<$Res> {
  factory $BirdwatchPivotFooterCopyWith(BirdwatchPivotFooter value,
          $Res Function(BirdwatchPivotFooter) then) =
      _$BirdwatchPivotFooterCopyWithImpl<$Res, BirdwatchPivotFooter>;
  @useResult
  $Res call({List<BirdwatchEntity> entities, String text});
}

/// @nodoc
class _$BirdwatchPivotFooterCopyWithImpl<$Res,
        $Val extends BirdwatchPivotFooter>
    implements $BirdwatchPivotFooterCopyWith<$Res> {
  _$BirdwatchPivotFooterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdwatchPivotFooter
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
abstract class _$$BirdwatchPivotFooterImplCopyWith<$Res>
    implements $BirdwatchPivotFooterCopyWith<$Res> {
  factory _$$BirdwatchPivotFooterImplCopyWith(_$BirdwatchPivotFooterImpl value,
          $Res Function(_$BirdwatchPivotFooterImpl) then) =
      __$$BirdwatchPivotFooterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BirdwatchEntity> entities, String text});
}

/// @nodoc
class __$$BirdwatchPivotFooterImplCopyWithImpl<$Res>
    extends _$BirdwatchPivotFooterCopyWithImpl<$Res, _$BirdwatchPivotFooterImpl>
    implements _$$BirdwatchPivotFooterImplCopyWith<$Res> {
  __$$BirdwatchPivotFooterImplCopyWithImpl(_$BirdwatchPivotFooterImpl _value,
      $Res Function(_$BirdwatchPivotFooterImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdwatchPivotFooter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? text = null,
  }) {
    return _then(_$BirdwatchPivotFooterImpl(
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
class _$BirdwatchPivotFooterImpl implements _BirdwatchPivotFooter {
  const _$BirdwatchPivotFooterImpl(
      {required final List<BirdwatchEntity> entities, required this.text})
      : _entities = entities;

  factory _$BirdwatchPivotFooterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdwatchPivotFooterImplFromJson(json);

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
    return 'BirdwatchPivotFooter(entities: $entities, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdwatchPivotFooterImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), text);

  /// Create a copy of BirdwatchPivotFooter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdwatchPivotFooterImplCopyWith<_$BirdwatchPivotFooterImpl>
      get copyWith =>
          __$$BirdwatchPivotFooterImplCopyWithImpl<_$BirdwatchPivotFooterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdwatchPivotFooterImplToJson(
      this,
    );
  }
}

abstract class _BirdwatchPivotFooter implements BirdwatchPivotFooter {
  const factory _BirdwatchPivotFooter(
      {required final List<BirdwatchEntity> entities,
      required final String text}) = _$BirdwatchPivotFooterImpl;

  factory _BirdwatchPivotFooter.fromJson(Map<String, dynamic> json) =
      _$BirdwatchPivotFooterImpl.fromJson;

  @override
  List<BirdwatchEntity> get entities;
  @override
  String get text;

  /// Create a copy of BirdwatchPivotFooter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdwatchPivotFooterImplCopyWith<_$BirdwatchPivotFooterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
