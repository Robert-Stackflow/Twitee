// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_cta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoverCta _$CoverCtaFromJson(Map<String, dynamic> json) {
  return _CoverCta.fromJson(json);
}

/// @nodoc
mixin _$CoverCta {
  @JsonKey(name: 'Text')
  String get text => throw _privateConstructorUsedError;
  CoverCtaButtonStyle get buttonStyle => throw _privateConstructorUsedError;
  List<Callback> get callbacks => throw _privateConstructorUsedError;
  CtaClientEventInfo get clientEventInfo => throw _privateConstructorUsedError;
  TimelineCoverBehavior get ctaBehavior => throw _privateConstructorUsedError;

  /// Serializes this CoverCta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoverCtaCopyWith<CoverCta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverCtaCopyWith<$Res> {
  factory $CoverCtaCopyWith(CoverCta value, $Res Function(CoverCta) then) =
      _$CoverCtaCopyWithImpl<$Res, CoverCta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Text') String text,
      CoverCtaButtonStyle buttonStyle,
      List<Callback> callbacks,
      CtaClientEventInfo clientEventInfo,
      TimelineCoverBehavior ctaBehavior});

  $CtaClientEventInfoCopyWith<$Res> get clientEventInfo;
  $TimelineCoverBehaviorCopyWith<$Res> get ctaBehavior;
}

/// @nodoc
class _$CoverCtaCopyWithImpl<$Res, $Val extends CoverCta>
    implements $CoverCtaCopyWith<$Res> {
  _$CoverCtaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? buttonStyle = null,
    Object? callbacks = null,
    Object? clientEventInfo = null,
    Object? ctaBehavior = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      buttonStyle: null == buttonStyle
          ? _value.buttonStyle
          : buttonStyle // ignore: cast_nullable_to_non_nullable
              as CoverCtaButtonStyle,
      callbacks: null == callbacks
          ? _value.callbacks
          : callbacks // ignore: cast_nullable_to_non_nullable
              as List<Callback>,
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as CtaClientEventInfo,
      ctaBehavior: null == ctaBehavior
          ? _value.ctaBehavior
          : ctaBehavior // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehavior,
    ) as $Val);
  }

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CtaClientEventInfoCopyWith<$Res> get clientEventInfo {
    return $CtaClientEventInfoCopyWith<$Res>(_value.clientEventInfo, (value) {
      return _then(_value.copyWith(clientEventInfo: value) as $Val);
    });
  }

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineCoverBehaviorCopyWith<$Res> get ctaBehavior {
    return $TimelineCoverBehaviorCopyWith<$Res>(_value.ctaBehavior, (value) {
      return _then(_value.copyWith(ctaBehavior: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverCtaImplCopyWith<$Res>
    implements $CoverCtaCopyWith<$Res> {
  factory _$$CoverCtaImplCopyWith(
          _$CoverCtaImpl value, $Res Function(_$CoverCtaImpl) then) =
      __$$CoverCtaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Text') String text,
      CoverCtaButtonStyle buttonStyle,
      List<Callback> callbacks,
      CtaClientEventInfo clientEventInfo,
      TimelineCoverBehavior ctaBehavior});

  @override
  $CtaClientEventInfoCopyWith<$Res> get clientEventInfo;
  @override
  $TimelineCoverBehaviorCopyWith<$Res> get ctaBehavior;
}

/// @nodoc
class __$$CoverCtaImplCopyWithImpl<$Res>
    extends _$CoverCtaCopyWithImpl<$Res, _$CoverCtaImpl>
    implements _$$CoverCtaImplCopyWith<$Res> {
  __$$CoverCtaImplCopyWithImpl(
      _$CoverCtaImpl _value, $Res Function(_$CoverCtaImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? buttonStyle = null,
    Object? callbacks = null,
    Object? clientEventInfo = null,
    Object? ctaBehavior = null,
  }) {
    return _then(_$CoverCtaImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      buttonStyle: null == buttonStyle
          ? _value.buttonStyle
          : buttonStyle // ignore: cast_nullable_to_non_nullable
              as CoverCtaButtonStyle,
      callbacks: null == callbacks
          ? _value._callbacks
          : callbacks // ignore: cast_nullable_to_non_nullable
              as List<Callback>,
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as CtaClientEventInfo,
      ctaBehavior: null == ctaBehavior
          ? _value.ctaBehavior
          : ctaBehavior // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehavior,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverCtaImpl implements _CoverCta {
  const _$CoverCtaImpl(
      {@JsonKey(name: 'Text') required this.text,
      required this.buttonStyle,
      required final List<Callback> callbacks,
      required this.clientEventInfo,
      required this.ctaBehavior})
      : _callbacks = callbacks;

  factory _$CoverCtaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverCtaImplFromJson(json);

  @override
  @JsonKey(name: 'Text')
  final String text;
  @override
  final CoverCtaButtonStyle buttonStyle;
  final List<Callback> _callbacks;
  @override
  List<Callback> get callbacks {
    if (_callbacks is EqualUnmodifiableListView) return _callbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callbacks);
  }

  @override
  final CtaClientEventInfo clientEventInfo;
  @override
  final TimelineCoverBehavior ctaBehavior;

  @override
  String toString() {
    return 'CoverCta(text: $text, buttonStyle: $buttonStyle, callbacks: $callbacks, clientEventInfo: $clientEventInfo, ctaBehavior: $ctaBehavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverCtaImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.buttonStyle, buttonStyle) ||
                other.buttonStyle == buttonStyle) &&
            const DeepCollectionEquality()
                .equals(other._callbacks, _callbacks) &&
            (identical(other.clientEventInfo, clientEventInfo) ||
                other.clientEventInfo == clientEventInfo) &&
            (identical(other.ctaBehavior, ctaBehavior) ||
                other.ctaBehavior == ctaBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      buttonStyle,
      const DeepCollectionEquality().hash(_callbacks),
      clientEventInfo,
      ctaBehavior);

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverCtaImplCopyWith<_$CoverCtaImpl> get copyWith =>
      __$$CoverCtaImplCopyWithImpl<_$CoverCtaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverCtaImplToJson(
      this,
    );
  }
}

abstract class _CoverCta implements CoverCta {
  const factory _CoverCta(
      {@JsonKey(name: 'Text') required final String text,
      required final CoverCtaButtonStyle buttonStyle,
      required final List<Callback> callbacks,
      required final CtaClientEventInfo clientEventInfo,
      required final TimelineCoverBehavior ctaBehavior}) = _$CoverCtaImpl;

  factory _CoverCta.fromJson(Map<String, dynamic> json) =
      _$CoverCtaImpl.fromJson;

  @override
  @JsonKey(name: 'Text')
  String get text;
  @override
  CoverCtaButtonStyle get buttonStyle;
  @override
  List<Callback> get callbacks;
  @override
  CtaClientEventInfo get clientEventInfo;
  @override
  TimelineCoverBehavior get ctaBehavior;

  /// Create a copy of CoverCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoverCtaImplCopyWith<_$CoverCtaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
