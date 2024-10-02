// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_highlight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextHighlight _$TextHighlightFromJson(Map<String, dynamic> json) {
  return _TextHighlight.fromJson(json);
}

/// @nodoc
mixin _$TextHighlight {
  int get endIndex => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;

  /// Serializes this TextHighlight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextHighlight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextHighlightCopyWith<TextHighlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextHighlightCopyWith<$Res> {
  factory $TextHighlightCopyWith(
          TextHighlight value, $Res Function(TextHighlight) then) =
      _$TextHighlightCopyWithImpl<$Res, TextHighlight>;
  @useResult
  $Res call({int endIndex, int startIndex});
}

/// @nodoc
class _$TextHighlightCopyWithImpl<$Res, $Val extends TextHighlight>
    implements $TextHighlightCopyWith<$Res> {
  _$TextHighlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextHighlight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endIndex = null,
    Object? startIndex = null,
  }) {
    return _then(_value.copyWith(
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextHighlightImplCopyWith<$Res>
    implements $TextHighlightCopyWith<$Res> {
  factory _$$TextHighlightImplCopyWith(
          _$TextHighlightImpl value, $Res Function(_$TextHighlightImpl) then) =
      __$$TextHighlightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int endIndex, int startIndex});
}

/// @nodoc
class __$$TextHighlightImplCopyWithImpl<$Res>
    extends _$TextHighlightCopyWithImpl<$Res, _$TextHighlightImpl>
    implements _$$TextHighlightImplCopyWith<$Res> {
  __$$TextHighlightImplCopyWithImpl(
      _$TextHighlightImpl _value, $Res Function(_$TextHighlightImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextHighlight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endIndex = null,
    Object? startIndex = null,
  }) {
    return _then(_$TextHighlightImpl(
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextHighlightImpl implements _TextHighlight {
  const _$TextHighlightImpl({required this.endIndex, required this.startIndex});

  factory _$TextHighlightImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextHighlightImplFromJson(json);

  @override
  final int endIndex;
  @override
  final int startIndex;

  @override
  String toString() {
    return 'TextHighlight(endIndex: $endIndex, startIndex: $startIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextHighlightImpl &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endIndex, startIndex);

  /// Create a copy of TextHighlight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextHighlightImplCopyWith<_$TextHighlightImpl> get copyWith =>
      __$$TextHighlightImplCopyWithImpl<_$TextHighlightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextHighlightImplToJson(
      this,
    );
  }
}

abstract class _TextHighlight implements TextHighlight {
  const factory _TextHighlight(
      {required final int endIndex,
      required final int startIndex}) = _$TextHighlightImpl;

  factory _TextHighlight.fromJson(Map<String, dynamic> json) =
      _$TextHighlightImpl.fromJson;

  @override
  int get endIndex;
  @override
  int get startIndex;

  /// Create a copy of TextHighlight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextHighlightImplCopyWith<_$TextHighlightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
