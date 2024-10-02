// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensitive_media_warning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SensitiveMediaWarning _$SensitiveMediaWarningFromJson(
    Map<String, dynamic> json) {
  return _SensitiveMediaWarning.fromJson(json);
}

/// @nodoc
mixin _$SensitiveMediaWarning {
  @JsonKey(name: 'adult_content')
  bool get adultContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'graphic_violence')
  bool get graphicViolence => throw _privateConstructorUsedError;
  bool get other => throw _privateConstructorUsedError;

  /// Serializes this SensitiveMediaWarning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SensitiveMediaWarning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SensitiveMediaWarningCopyWith<SensitiveMediaWarning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensitiveMediaWarningCopyWith<$Res> {
  factory $SensitiveMediaWarningCopyWith(SensitiveMediaWarning value,
          $Res Function(SensitiveMediaWarning) then) =
      _$SensitiveMediaWarningCopyWithImpl<$Res, SensitiveMediaWarning>;
  @useResult
  $Res call(
      {@JsonKey(name: 'adult_content') bool adultContent,
      @JsonKey(name: 'graphic_violence') bool graphicViolence,
      bool other});
}

/// @nodoc
class _$SensitiveMediaWarningCopyWithImpl<$Res,
        $Val extends SensitiveMediaWarning>
    implements $SensitiveMediaWarningCopyWith<$Res> {
  _$SensitiveMediaWarningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SensitiveMediaWarning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultContent = null,
    Object? graphicViolence = null,
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      adultContent: null == adultContent
          ? _value.adultContent
          : adultContent // ignore: cast_nullable_to_non_nullable
              as bool,
      graphicViolence: null == graphicViolence
          ? _value.graphicViolence
          : graphicViolence // ignore: cast_nullable_to_non_nullable
              as bool,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensitiveMediaWarningImplCopyWith<$Res>
    implements $SensitiveMediaWarningCopyWith<$Res> {
  factory _$$SensitiveMediaWarningImplCopyWith(
          _$SensitiveMediaWarningImpl value,
          $Res Function(_$SensitiveMediaWarningImpl) then) =
      __$$SensitiveMediaWarningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adult_content') bool adultContent,
      @JsonKey(name: 'graphic_violence') bool graphicViolence,
      bool other});
}

/// @nodoc
class __$$SensitiveMediaWarningImplCopyWithImpl<$Res>
    extends _$SensitiveMediaWarningCopyWithImpl<$Res,
        _$SensitiveMediaWarningImpl>
    implements _$$SensitiveMediaWarningImplCopyWith<$Res> {
  __$$SensitiveMediaWarningImplCopyWithImpl(_$SensitiveMediaWarningImpl _value,
      $Res Function(_$SensitiveMediaWarningImpl) _then)
      : super(_value, _then);

  /// Create a copy of SensitiveMediaWarning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultContent = null,
    Object? graphicViolence = null,
    Object? other = null,
  }) {
    return _then(_$SensitiveMediaWarningImpl(
      adultContent: null == adultContent
          ? _value.adultContent
          : adultContent // ignore: cast_nullable_to_non_nullable
              as bool,
      graphicViolence: null == graphicViolence
          ? _value.graphicViolence
          : graphicViolence // ignore: cast_nullable_to_non_nullable
              as bool,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensitiveMediaWarningImpl implements _SensitiveMediaWarning {
  const _$SensitiveMediaWarningImpl(
      {@JsonKey(name: 'adult_content') required this.adultContent,
      @JsonKey(name: 'graphic_violence') required this.graphicViolence,
      required this.other});

  factory _$SensitiveMediaWarningImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensitiveMediaWarningImplFromJson(json);

  @override
  @JsonKey(name: 'adult_content')
  final bool adultContent;
  @override
  @JsonKey(name: 'graphic_violence')
  final bool graphicViolence;
  @override
  final bool other;

  @override
  String toString() {
    return 'SensitiveMediaWarning(adultContent: $adultContent, graphicViolence: $graphicViolence, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensitiveMediaWarningImpl &&
            (identical(other.adultContent, adultContent) ||
                other.adultContent == adultContent) &&
            (identical(other.graphicViolence, graphicViolence) ||
                other.graphicViolence == graphicViolence) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, adultContent, graphicViolence, other);

  /// Create a copy of SensitiveMediaWarning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SensitiveMediaWarningImplCopyWith<_$SensitiveMediaWarningImpl>
      get copyWith => __$$SensitiveMediaWarningImplCopyWithImpl<
          _$SensitiveMediaWarningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensitiveMediaWarningImplToJson(
      this,
    );
  }
}

abstract class _SensitiveMediaWarning implements SensitiveMediaWarning {
  const factory _SensitiveMediaWarning(
      {@JsonKey(name: 'adult_content') required final bool adultContent,
      @JsonKey(name: 'graphic_violence') required final bool graphicViolence,
      required final bool other}) = _$SensitiveMediaWarningImpl;

  factory _SensitiveMediaWarning.fromJson(Map<String, dynamic> json) =
      _$SensitiveMediaWarningImpl.fromJson;

  @override
  @JsonKey(name: 'adult_content')
  bool get adultContent;
  @override
  @JsonKey(name: 'graphic_violence')
  bool get graphicViolence;
  @override
  bool get other;

  /// Create a copy of SensitiveMediaWarning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SensitiveMediaWarningImplCopyWith<_$SensitiveMediaWarningImpl>
      get copyWith => throw _privateConstructorUsedError;
}
