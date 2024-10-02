// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_treatment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisplayTreatment _$DisplayTreatmentFromJson(Map<String, dynamic> json) {
  return _DisplayTreatment.fromJson(json);
}

/// @nodoc
mixin _$DisplayTreatment {
  String get actionText => throw _privateConstructorUsedError;

  /// Serializes this DisplayTreatment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayTreatment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayTreatmentCopyWith<DisplayTreatment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayTreatmentCopyWith<$Res> {
  factory $DisplayTreatmentCopyWith(
          DisplayTreatment value, $Res Function(DisplayTreatment) then) =
      _$DisplayTreatmentCopyWithImpl<$Res, DisplayTreatment>;
  @useResult
  $Res call({String actionText});
}

/// @nodoc
class _$DisplayTreatmentCopyWithImpl<$Res, $Val extends DisplayTreatment>
    implements $DisplayTreatmentCopyWith<$Res> {
  _$DisplayTreatmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayTreatment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionText = null,
  }) {
    return _then(_value.copyWith(
      actionText: null == actionText
          ? _value.actionText
          : actionText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayTreatmentImplCopyWith<$Res>
    implements $DisplayTreatmentCopyWith<$Res> {
  factory _$$DisplayTreatmentImplCopyWith(_$DisplayTreatmentImpl value,
          $Res Function(_$DisplayTreatmentImpl) then) =
      __$$DisplayTreatmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String actionText});
}

/// @nodoc
class __$$DisplayTreatmentImplCopyWithImpl<$Res>
    extends _$DisplayTreatmentCopyWithImpl<$Res, _$DisplayTreatmentImpl>
    implements _$$DisplayTreatmentImplCopyWith<$Res> {
  __$$DisplayTreatmentImplCopyWithImpl(_$DisplayTreatmentImpl _value,
      $Res Function(_$DisplayTreatmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayTreatment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionText = null,
  }) {
    return _then(_$DisplayTreatmentImpl(
      actionText: null == actionText
          ? _value.actionText
          : actionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayTreatmentImpl implements _DisplayTreatment {
  const _$DisplayTreatmentImpl({required this.actionText});

  factory _$DisplayTreatmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayTreatmentImplFromJson(json);

  @override
  final String actionText;

  @override
  String toString() {
    return 'DisplayTreatment(actionText: $actionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayTreatmentImpl &&
            (identical(other.actionText, actionText) ||
                other.actionText == actionText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, actionText);

  /// Create a copy of DisplayTreatment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayTreatmentImplCopyWith<_$DisplayTreatmentImpl> get copyWith =>
      __$$DisplayTreatmentImplCopyWithImpl<_$DisplayTreatmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayTreatmentImplToJson(
      this,
    );
  }
}

abstract class _DisplayTreatment implements DisplayTreatment {
  const factory _DisplayTreatment({required final String actionText}) =
      _$DisplayTreatmentImpl;

  factory _DisplayTreatment.fromJson(Map<String, dynamic> json) =
      _$DisplayTreatmentImpl.fromJson;

  @override
  String get actionText;

  /// Create a copy of DisplayTreatment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayTreatmentImplCopyWith<_$DisplayTreatmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
