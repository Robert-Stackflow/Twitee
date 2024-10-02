// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_general_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineGeneralContext _$TimelineGeneralContextFromJson(
    Map<String, dynamic> json) {
  return _TimelineGeneralContext.fromJson(json);
}

/// @nodoc
mixin _$TimelineGeneralContext {
  TimelineGeneralContextContextType get contextType =>
      throw _privateConstructorUsedError;
  SocialContextLandingUrl get landingUrl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  SocialContextUnionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineGeneralContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineGeneralContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineGeneralContextCopyWith<TimelineGeneralContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineGeneralContextCopyWith<$Res> {
  factory $TimelineGeneralContextCopyWith(TimelineGeneralContext value,
          $Res Function(TimelineGeneralContext) then) =
      _$TimelineGeneralContextCopyWithImpl<$Res, TimelineGeneralContext>;
  @useResult
  $Res call(
      {TimelineGeneralContextContextType contextType,
      SocialContextLandingUrl landingUrl,
      String text,
      SocialContextUnionType type});

  $SocialContextLandingUrlCopyWith<$Res> get landingUrl;
}

/// @nodoc
class _$TimelineGeneralContextCopyWithImpl<$Res,
        $Val extends TimelineGeneralContext>
    implements $TimelineGeneralContextCopyWith<$Res> {
  _$TimelineGeneralContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineGeneralContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contextType = null,
    Object? landingUrl = null,
    Object? text = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      contextType: null == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as TimelineGeneralContextContextType,
      landingUrl: null == landingUrl
          ? _value.landingUrl
          : landingUrl // ignore: cast_nullable_to_non_nullable
              as SocialContextLandingUrl,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialContextUnionType,
    ) as $Val);
  }

  /// Create a copy of TimelineGeneralContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialContextLandingUrlCopyWith<$Res> get landingUrl {
    return $SocialContextLandingUrlCopyWith<$Res>(_value.landingUrl, (value) {
      return _then(_value.copyWith(landingUrl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineGeneralContextImplCopyWith<$Res>
    implements $TimelineGeneralContextCopyWith<$Res> {
  factory _$$TimelineGeneralContextImplCopyWith(
          _$TimelineGeneralContextImpl value,
          $Res Function(_$TimelineGeneralContextImpl) then) =
      __$$TimelineGeneralContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimelineGeneralContextContextType contextType,
      SocialContextLandingUrl landingUrl,
      String text,
      SocialContextUnionType type});

  @override
  $SocialContextLandingUrlCopyWith<$Res> get landingUrl;
}

/// @nodoc
class __$$TimelineGeneralContextImplCopyWithImpl<$Res>
    extends _$TimelineGeneralContextCopyWithImpl<$Res,
        _$TimelineGeneralContextImpl>
    implements _$$TimelineGeneralContextImplCopyWith<$Res> {
  __$$TimelineGeneralContextImplCopyWithImpl(
      _$TimelineGeneralContextImpl _value,
      $Res Function(_$TimelineGeneralContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineGeneralContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contextType = null,
    Object? landingUrl = null,
    Object? text = null,
    Object? type = null,
  }) {
    return _then(_$TimelineGeneralContextImpl(
      contextType: null == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as TimelineGeneralContextContextType,
      landingUrl: null == landingUrl
          ? _value.landingUrl
          : landingUrl // ignore: cast_nullable_to_non_nullable
              as SocialContextLandingUrl,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialContextUnionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineGeneralContextImpl implements _TimelineGeneralContext {
  const _$TimelineGeneralContextImpl(
      {required this.contextType,
      required this.landingUrl,
      required this.text,
      required this.type});

  factory _$TimelineGeneralContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineGeneralContextImplFromJson(json);

  @override
  final TimelineGeneralContextContextType contextType;
  @override
  final SocialContextLandingUrl landingUrl;
  @override
  final String text;
  @override
  final SocialContextUnionType type;

  @override
  String toString() {
    return 'TimelineGeneralContext(contextType: $contextType, landingUrl: $landingUrl, text: $text, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineGeneralContextImpl &&
            (identical(other.contextType, contextType) ||
                other.contextType == contextType) &&
            (identical(other.landingUrl, landingUrl) ||
                other.landingUrl == landingUrl) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contextType, landingUrl, text, type);

  /// Create a copy of TimelineGeneralContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineGeneralContextImplCopyWith<_$TimelineGeneralContextImpl>
      get copyWith => __$$TimelineGeneralContextImplCopyWithImpl<
          _$TimelineGeneralContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineGeneralContextImplToJson(
      this,
    );
  }
}

abstract class _TimelineGeneralContext implements TimelineGeneralContext {
  const factory _TimelineGeneralContext(
          {required final TimelineGeneralContextContextType contextType,
          required final SocialContextLandingUrl landingUrl,
          required final String text,
          required final SocialContextUnionType type}) =
      _$TimelineGeneralContextImpl;

  factory _TimelineGeneralContext.fromJson(Map<String, dynamic> json) =
      _$TimelineGeneralContextImpl.fromJson;

  @override
  TimelineGeneralContextContextType get contextType;
  @override
  SocialContextLandingUrl get landingUrl;
  @override
  String get text;
  @override
  SocialContextUnionType get type;

  /// Create a copy of TimelineGeneralContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineGeneralContextImplCopyWith<_$TimelineGeneralContextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
