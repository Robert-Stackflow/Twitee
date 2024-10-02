// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_topic_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineTopicContext _$TimelineTopicContextFromJson(Map<String, dynamic> json) {
  return _TimelineTopicContext.fromJson(json);
}

/// @nodoc
mixin _$TimelineTopicContext {
  TimelineTopicContextFunctionalityType get functionalityType =>
      throw _privateConstructorUsedError;
  TopicContext get topic => throw _privateConstructorUsedError;
  SocialContextUnionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineTopicContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineTopicContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineTopicContextCopyWith<TimelineTopicContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineTopicContextCopyWith<$Res> {
  factory $TimelineTopicContextCopyWith(TimelineTopicContext value,
          $Res Function(TimelineTopicContext) then) =
      _$TimelineTopicContextCopyWithImpl<$Res, TimelineTopicContext>;
  @useResult
  $Res call(
      {TimelineTopicContextFunctionalityType functionalityType,
      TopicContext topic,
      SocialContextUnionType type});

  $TopicContextCopyWith<$Res> get topic;
}

/// @nodoc
class _$TimelineTopicContextCopyWithImpl<$Res,
        $Val extends TimelineTopicContext>
    implements $TimelineTopicContextCopyWith<$Res> {
  _$TimelineTopicContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineTopicContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functionalityType = null,
    Object? topic = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      functionalityType: null == functionalityType
          ? _value.functionalityType
          : functionalityType // ignore: cast_nullable_to_non_nullable
              as TimelineTopicContextFunctionalityType,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TopicContext,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialContextUnionType,
    ) as $Val);
  }

  /// Create a copy of TimelineTopicContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicContextCopyWith<$Res> get topic {
    return $TopicContextCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineTopicContextImplCopyWith<$Res>
    implements $TimelineTopicContextCopyWith<$Res> {
  factory _$$TimelineTopicContextImplCopyWith(_$TimelineTopicContextImpl value,
          $Res Function(_$TimelineTopicContextImpl) then) =
      __$$TimelineTopicContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimelineTopicContextFunctionalityType functionalityType,
      TopicContext topic,
      SocialContextUnionType type});

  @override
  $TopicContextCopyWith<$Res> get topic;
}

/// @nodoc
class __$$TimelineTopicContextImplCopyWithImpl<$Res>
    extends _$TimelineTopicContextCopyWithImpl<$Res, _$TimelineTopicContextImpl>
    implements _$$TimelineTopicContextImplCopyWith<$Res> {
  __$$TimelineTopicContextImplCopyWithImpl(_$TimelineTopicContextImpl _value,
      $Res Function(_$TimelineTopicContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineTopicContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functionalityType = null,
    Object? topic = null,
    Object? type = null,
  }) {
    return _then(_$TimelineTopicContextImpl(
      functionalityType: null == functionalityType
          ? _value.functionalityType
          : functionalityType // ignore: cast_nullable_to_non_nullable
              as TimelineTopicContextFunctionalityType,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TopicContext,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialContextUnionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineTopicContextImpl implements _TimelineTopicContext {
  const _$TimelineTopicContextImpl(
      {required this.functionalityType,
      required this.topic,
      required this.type});

  factory _$TimelineTopicContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineTopicContextImplFromJson(json);

  @override
  final TimelineTopicContextFunctionalityType functionalityType;
  @override
  final TopicContext topic;
  @override
  final SocialContextUnionType type;

  @override
  String toString() {
    return 'TimelineTopicContext(functionalityType: $functionalityType, topic: $topic, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineTopicContextImpl &&
            (identical(other.functionalityType, functionalityType) ||
                other.functionalityType == functionalityType) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, functionalityType, topic, type);

  /// Create a copy of TimelineTopicContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineTopicContextImplCopyWith<_$TimelineTopicContextImpl>
      get copyWith =>
          __$$TimelineTopicContextImplCopyWithImpl<_$TimelineTopicContextImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineTopicContextImplToJson(
      this,
    );
  }
}

abstract class _TimelineTopicContext implements TimelineTopicContext {
  const factory _TimelineTopicContext(
      {required final TimelineTopicContextFunctionalityType functionalityType,
      required final TopicContext topic,
      required final SocialContextUnionType type}) = _$TimelineTopicContextImpl;

  factory _TimelineTopicContext.fromJson(Map<String, dynamic> json) =
      _$TimelineTopicContextImpl.fromJson;

  @override
  TimelineTopicContextFunctionalityType get functionalityType;
  @override
  TopicContext get topic;
  @override
  SocialContextUnionType get type;

  /// Create a copy of TimelineTopicContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineTopicContextImplCopyWith<_$TimelineTopicContextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
