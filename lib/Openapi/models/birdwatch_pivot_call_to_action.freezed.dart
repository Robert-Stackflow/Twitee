// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birdwatch_pivot_call_to_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdwatchPivotCallToAction _$BirdwatchPivotCallToActionFromJson(
    Map<String, dynamic> json) {
  return _BirdwatchPivotCallToAction.fromJson(json);
}

/// @nodoc
mixin _$BirdwatchPivotCallToAction {
  String get destinationUrl => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this BirdwatchPivotCallToAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdwatchPivotCallToAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdwatchPivotCallToActionCopyWith<BirdwatchPivotCallToAction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdwatchPivotCallToActionCopyWith<$Res> {
  factory $BirdwatchPivotCallToActionCopyWith(BirdwatchPivotCallToAction value,
          $Res Function(BirdwatchPivotCallToAction) then) =
      _$BirdwatchPivotCallToActionCopyWithImpl<$Res,
          BirdwatchPivotCallToAction>;
  @useResult
  $Res call({String destinationUrl, String prompt, String title});
}

/// @nodoc
class _$BirdwatchPivotCallToActionCopyWithImpl<$Res,
        $Val extends BirdwatchPivotCallToAction>
    implements $BirdwatchPivotCallToActionCopyWith<$Res> {
  _$BirdwatchPivotCallToActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdwatchPivotCallToAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationUrl = null,
    Object? prompt = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      destinationUrl: null == destinationUrl
          ? _value.destinationUrl
          : destinationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdwatchPivotCallToActionImplCopyWith<$Res>
    implements $BirdwatchPivotCallToActionCopyWith<$Res> {
  factory _$$BirdwatchPivotCallToActionImplCopyWith(
          _$BirdwatchPivotCallToActionImpl value,
          $Res Function(_$BirdwatchPivotCallToActionImpl) then) =
      __$$BirdwatchPivotCallToActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String destinationUrl, String prompt, String title});
}

/// @nodoc
class __$$BirdwatchPivotCallToActionImplCopyWithImpl<$Res>
    extends _$BirdwatchPivotCallToActionCopyWithImpl<$Res,
        _$BirdwatchPivotCallToActionImpl>
    implements _$$BirdwatchPivotCallToActionImplCopyWith<$Res> {
  __$$BirdwatchPivotCallToActionImplCopyWithImpl(
      _$BirdwatchPivotCallToActionImpl _value,
      $Res Function(_$BirdwatchPivotCallToActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdwatchPivotCallToAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationUrl = null,
    Object? prompt = null,
    Object? title = null,
  }) {
    return _then(_$BirdwatchPivotCallToActionImpl(
      destinationUrl: null == destinationUrl
          ? _value.destinationUrl
          : destinationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdwatchPivotCallToActionImpl implements _BirdwatchPivotCallToAction {
  const _$BirdwatchPivotCallToActionImpl(
      {required this.destinationUrl,
      required this.prompt,
      required this.title});

  factory _$BirdwatchPivotCallToActionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BirdwatchPivotCallToActionImplFromJson(json);

  @override
  final String destinationUrl;
  @override
  final String prompt;
  @override
  final String title;

  @override
  String toString() {
    return 'BirdwatchPivotCallToAction(destinationUrl: $destinationUrl, prompt: $prompt, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdwatchPivotCallToActionImpl &&
            (identical(other.destinationUrl, destinationUrl) ||
                other.destinationUrl == destinationUrl) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, destinationUrl, prompt, title);

  /// Create a copy of BirdwatchPivotCallToAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdwatchPivotCallToActionImplCopyWith<_$BirdwatchPivotCallToActionImpl>
      get copyWith => __$$BirdwatchPivotCallToActionImplCopyWithImpl<
          _$BirdwatchPivotCallToActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdwatchPivotCallToActionImplToJson(
      this,
    );
  }
}

abstract class _BirdwatchPivotCallToAction
    implements BirdwatchPivotCallToAction {
  const factory _BirdwatchPivotCallToAction(
      {required final String destinationUrl,
      required final String prompt,
      required final String title}) = _$BirdwatchPivotCallToActionImpl;

  factory _BirdwatchPivotCallToAction.fromJson(Map<String, dynamic> json) =
      _$BirdwatchPivotCallToActionImpl.fromJson;

  @override
  String get destinationUrl;
  @override
  String get prompt;
  @override
  String get title;

  /// Create a copy of BirdwatchPivotCallToAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdwatchPivotCallToActionImplCopyWith<_$BirdwatchPivotCallToActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
