// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_show_alert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineShowAlert _$TimelineShowAlertFromJson(Map<String, dynamic> json) {
  return _TimelineShowAlert.fromJson(json);
}

/// @nodoc
mixin _$TimelineShowAlert {
  TimelineShowAlertAlertType get alertType =>
      throw _privateConstructorUsedError;
  dynamic get colorConfig => throw _privateConstructorUsedError;
  int get displayDurationMs => throw _privateConstructorUsedError;
  TimelineShowAlertDisplayLocation get displayLocation =>
      throw _privateConstructorUsedError;
  dynamic get iconDisplayInfo => throw _privateConstructorUsedError;
  RichText get richText => throw _privateConstructorUsedError;
  int get triggerDelayMs => throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;
  List<UserResults> get usersResults => throw _privateConstructorUsedError;

  /// Serializes this TimelineShowAlert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineShowAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineShowAlertCopyWith<TimelineShowAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineShowAlertCopyWith<$Res> {
  factory $TimelineShowAlertCopyWith(
          TimelineShowAlert value, $Res Function(TimelineShowAlert) then) =
      _$TimelineShowAlertCopyWithImpl<$Res, TimelineShowAlert>;
  @useResult
  $Res call(
      {TimelineShowAlertAlertType alertType,
      dynamic colorConfig,
      int displayDurationMs,
      TimelineShowAlertDisplayLocation displayLocation,
      dynamic iconDisplayInfo,
      RichText richText,
      int triggerDelayMs,
      InstructionType type,
      List<UserResults> usersResults});

  $RichTextCopyWith<$Res> get richText;
}

/// @nodoc
class _$TimelineShowAlertCopyWithImpl<$Res, $Val extends TimelineShowAlert>
    implements $TimelineShowAlertCopyWith<$Res> {
  _$TimelineShowAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineShowAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertType = null,
    Object? colorConfig = freezed,
    Object? displayDurationMs = null,
    Object? displayLocation = null,
    Object? iconDisplayInfo = freezed,
    Object? richText = null,
    Object? triggerDelayMs = null,
    Object? type = null,
    Object? usersResults = null,
  }) {
    return _then(_value.copyWith(
      alertType: null == alertType
          ? _value.alertType
          : alertType // ignore: cast_nullable_to_non_nullable
              as TimelineShowAlertAlertType,
      colorConfig: freezed == colorConfig
          ? _value.colorConfig
          : colorConfig // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayDurationMs: null == displayDurationMs
          ? _value.displayDurationMs
          : displayDurationMs // ignore: cast_nullable_to_non_nullable
              as int,
      displayLocation: null == displayLocation
          ? _value.displayLocation
          : displayLocation // ignore: cast_nullable_to_non_nullable
              as TimelineShowAlertDisplayLocation,
      iconDisplayInfo: freezed == iconDisplayInfo
          ? _value.iconDisplayInfo
          : iconDisplayInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      richText: null == richText
          ? _value.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as RichText,
      triggerDelayMs: null == triggerDelayMs
          ? _value.triggerDelayMs
          : triggerDelayMs // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
      usersResults: null == usersResults
          ? _value.usersResults
          : usersResults // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
    ) as $Val);
  }

  /// Create a copy of TimelineShowAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get richText {
    return $RichTextCopyWith<$Res>(_value.richText, (value) {
      return _then(_value.copyWith(richText: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineShowAlertImplCopyWith<$Res>
    implements $TimelineShowAlertCopyWith<$Res> {
  factory _$$TimelineShowAlertImplCopyWith(_$TimelineShowAlertImpl value,
          $Res Function(_$TimelineShowAlertImpl) then) =
      __$$TimelineShowAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimelineShowAlertAlertType alertType,
      dynamic colorConfig,
      int displayDurationMs,
      TimelineShowAlertDisplayLocation displayLocation,
      dynamic iconDisplayInfo,
      RichText richText,
      int triggerDelayMs,
      InstructionType type,
      List<UserResults> usersResults});

  @override
  $RichTextCopyWith<$Res> get richText;
}

/// @nodoc
class __$$TimelineShowAlertImplCopyWithImpl<$Res>
    extends _$TimelineShowAlertCopyWithImpl<$Res, _$TimelineShowAlertImpl>
    implements _$$TimelineShowAlertImplCopyWith<$Res> {
  __$$TimelineShowAlertImplCopyWithImpl(_$TimelineShowAlertImpl _value,
      $Res Function(_$TimelineShowAlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineShowAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertType = null,
    Object? colorConfig = freezed,
    Object? displayDurationMs = null,
    Object? displayLocation = null,
    Object? iconDisplayInfo = freezed,
    Object? richText = null,
    Object? triggerDelayMs = null,
    Object? type = null,
    Object? usersResults = null,
  }) {
    return _then(_$TimelineShowAlertImpl(
      alertType: null == alertType
          ? _value.alertType
          : alertType // ignore: cast_nullable_to_non_nullable
              as TimelineShowAlertAlertType,
      colorConfig: freezed == colorConfig
          ? _value.colorConfig
          : colorConfig // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayDurationMs: null == displayDurationMs
          ? _value.displayDurationMs
          : displayDurationMs // ignore: cast_nullable_to_non_nullable
              as int,
      displayLocation: null == displayLocation
          ? _value.displayLocation
          : displayLocation // ignore: cast_nullable_to_non_nullable
              as TimelineShowAlertDisplayLocation,
      iconDisplayInfo: freezed == iconDisplayInfo
          ? _value.iconDisplayInfo
          : iconDisplayInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      richText: null == richText
          ? _value.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as RichText,
      triggerDelayMs: null == triggerDelayMs
          ? _value.triggerDelayMs
          : triggerDelayMs // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
      usersResults: null == usersResults
          ? _value._usersResults
          : usersResults // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineShowAlertImpl implements _TimelineShowAlert {
  const _$TimelineShowAlertImpl(
      {required this.alertType,
      required this.colorConfig,
      required this.displayDurationMs,
      required this.displayLocation,
      required this.iconDisplayInfo,
      required this.richText,
      required this.triggerDelayMs,
      required this.type,
      required final List<UserResults> usersResults})
      : _usersResults = usersResults;

  factory _$TimelineShowAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineShowAlertImplFromJson(json);

  @override
  final TimelineShowAlertAlertType alertType;
  @override
  final dynamic colorConfig;
  @override
  final int displayDurationMs;
  @override
  final TimelineShowAlertDisplayLocation displayLocation;
  @override
  final dynamic iconDisplayInfo;
  @override
  final RichText richText;
  @override
  final int triggerDelayMs;
  @override
  final InstructionType type;
  final List<UserResults> _usersResults;
  @override
  List<UserResults> get usersResults {
    if (_usersResults is EqualUnmodifiableListView) return _usersResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersResults);
  }

  @override
  String toString() {
    return 'TimelineShowAlert(alertType: $alertType, colorConfig: $colorConfig, displayDurationMs: $displayDurationMs, displayLocation: $displayLocation, iconDisplayInfo: $iconDisplayInfo, richText: $richText, triggerDelayMs: $triggerDelayMs, type: $type, usersResults: $usersResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineShowAlertImpl &&
            (identical(other.alertType, alertType) ||
                other.alertType == alertType) &&
            const DeepCollectionEquality()
                .equals(other.colorConfig, colorConfig) &&
            (identical(other.displayDurationMs, displayDurationMs) ||
                other.displayDurationMs == displayDurationMs) &&
            (identical(other.displayLocation, displayLocation) ||
                other.displayLocation == displayLocation) &&
            const DeepCollectionEquality()
                .equals(other.iconDisplayInfo, iconDisplayInfo) &&
            (identical(other.richText, richText) ||
                other.richText == richText) &&
            (identical(other.triggerDelayMs, triggerDelayMs) ||
                other.triggerDelayMs == triggerDelayMs) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._usersResults, _usersResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alertType,
      const DeepCollectionEquality().hash(colorConfig),
      displayDurationMs,
      displayLocation,
      const DeepCollectionEquality().hash(iconDisplayInfo),
      richText,
      triggerDelayMs,
      type,
      const DeepCollectionEquality().hash(_usersResults));

  /// Create a copy of TimelineShowAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineShowAlertImplCopyWith<_$TimelineShowAlertImpl> get copyWith =>
      __$$TimelineShowAlertImplCopyWithImpl<_$TimelineShowAlertImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineShowAlertImplToJson(
      this,
    );
  }
}

abstract class _TimelineShowAlert implements TimelineShowAlert {
  const factory _TimelineShowAlert(
      {required final TimelineShowAlertAlertType alertType,
      required final dynamic colorConfig,
      required final int displayDurationMs,
      required final TimelineShowAlertDisplayLocation displayLocation,
      required final dynamic iconDisplayInfo,
      required final RichText richText,
      required final int triggerDelayMs,
      required final InstructionType type,
      required final List<UserResults> usersResults}) = _$TimelineShowAlertImpl;

  factory _TimelineShowAlert.fromJson(Map<String, dynamic> json) =
      _$TimelineShowAlertImpl.fromJson;

  @override
  TimelineShowAlertAlertType get alertType;
  @override
  dynamic get colorConfig;
  @override
  int get displayDurationMs;
  @override
  TimelineShowAlertDisplayLocation get displayLocation;
  @override
  dynamic get iconDisplayInfo;
  @override
  RichText get richText;
  @override
  int get triggerDelayMs;
  @override
  InstructionType get type;
  @override
  List<UserResults> get usersResults;

  /// Create a copy of TimelineShowAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineShowAlertImplCopyWith<_$TimelineShowAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
