// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Legacy _$LegacyFromJson(Map<String, dynamic> json) {
  return _Legacy.fromJson(json);
}

/// @nodoc
mixin _$Legacy {
  @JsonKey(name: 'full_text')
  String get fullText => throw _privateConstructorUsedError;

  /// Serializes this Legacy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Legacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegacyCopyWith<Legacy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegacyCopyWith<$Res> {
  factory $LegacyCopyWith(Legacy value, $Res Function(Legacy) then) =
      _$LegacyCopyWithImpl<$Res, Legacy>;
  @useResult
  $Res call({@JsonKey(name: 'full_text') String fullText});
}

/// @nodoc
class _$LegacyCopyWithImpl<$Res, $Val extends Legacy>
    implements $LegacyCopyWith<$Res> {
  _$LegacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Legacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
  }) {
    return _then(_value.copyWith(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegacyImplCopyWith<$Res> implements $LegacyCopyWith<$Res> {
  factory _$$LegacyImplCopyWith(
          _$LegacyImpl value, $Res Function(_$LegacyImpl) then) =
      __$$LegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'full_text') String fullText});
}

/// @nodoc
class __$$LegacyImplCopyWithImpl<$Res>
    extends _$LegacyCopyWithImpl<$Res, _$LegacyImpl>
    implements _$$LegacyImplCopyWith<$Res> {
  __$$LegacyImplCopyWithImpl(
      _$LegacyImpl _value, $Res Function(_$LegacyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Legacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
  }) {
    return _then(_$LegacyImpl(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegacyImpl implements _Legacy {
  const _$LegacyImpl({@JsonKey(name: 'full_text') required this.fullText});

  factory _$LegacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegacyImplFromJson(json);

  @override
  @JsonKey(name: 'full_text')
  final String fullText;

  @override
  String toString() {
    return 'Legacy(fullText: $fullText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegacyImpl &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullText);

  /// Create a copy of Legacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegacyImplCopyWith<_$LegacyImpl> get copyWith =>
      __$$LegacyImplCopyWithImpl<_$LegacyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegacyImplToJson(
      this,
    );
  }
}

abstract class _Legacy implements Legacy {
  const factory _Legacy(
          {@JsonKey(name: 'full_text') required final String fullText}) =
      _$LegacyImpl;

  factory _Legacy.fromJson(Map<String, dynamic> json) = _$LegacyImpl.fromJson;

  @override
  @JsonKey(name: 'full_text')
  String get fullText;

  /// Create a copy of Legacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegacyImplCopyWith<_$LegacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
