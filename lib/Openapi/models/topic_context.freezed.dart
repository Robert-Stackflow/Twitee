// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopicContext _$TopicContextFromJson(Map<String, dynamic> json) {
  return _TopicContext.fromJson(json);
}

/// @nodoc
mixin _$TopicContext {
  String get description => throw _privateConstructorUsedError;
  bool get following => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String get iconUrl => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'not_interested')
  bool get notInterested => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id')
  String get topicId => throw _privateConstructorUsedError;

  /// Serializes this TopicContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicContextCopyWith<TopicContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicContextCopyWith<$Res> {
  factory $TopicContextCopyWith(
          TopicContext value, $Res Function(TopicContext) then) =
      _$TopicContextCopyWithImpl<$Res, TopicContext>;
  @useResult
  $Res call(
      {String description,
      bool following,
      @JsonKey(name: 'icon_url') String iconUrl,
      String id,
      String name,
      @JsonKey(name: 'not_interested') bool notInterested,
      @JsonKey(name: 'topic_id') String topicId});
}

/// @nodoc
class _$TopicContextCopyWithImpl<$Res, $Val extends TopicContext>
    implements $TopicContextCopyWith<$Res> {
  _$TopicContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? following = null,
    Object? iconUrl = null,
    Object? id = null,
    Object? name = null,
    Object? notInterested = null,
    Object? topicId = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notInterested: null == notInterested
          ? _value.notInterested
          : notInterested // ignore: cast_nullable_to_non_nullable
              as bool,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicContextImplCopyWith<$Res>
    implements $TopicContextCopyWith<$Res> {
  factory _$$TopicContextImplCopyWith(
          _$TopicContextImpl value, $Res Function(_$TopicContextImpl) then) =
      __$$TopicContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      bool following,
      @JsonKey(name: 'icon_url') String iconUrl,
      String id,
      String name,
      @JsonKey(name: 'not_interested') bool notInterested,
      @JsonKey(name: 'topic_id') String topicId});
}

/// @nodoc
class __$$TopicContextImplCopyWithImpl<$Res>
    extends _$TopicContextCopyWithImpl<$Res, _$TopicContextImpl>
    implements _$$TopicContextImplCopyWith<$Res> {
  __$$TopicContextImplCopyWithImpl(
      _$TopicContextImpl _value, $Res Function(_$TopicContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? following = null,
    Object? iconUrl = null,
    Object? id = null,
    Object? name = null,
    Object? notInterested = null,
    Object? topicId = null,
  }) {
    return _then(_$TopicContextImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notInterested: null == notInterested
          ? _value.notInterested
          : notInterested // ignore: cast_nullable_to_non_nullable
              as bool,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicContextImpl implements _TopicContext {
  const _$TopicContextImpl(
      {required this.description,
      required this.following,
      @JsonKey(name: 'icon_url') required this.iconUrl,
      required this.id,
      required this.name,
      @JsonKey(name: 'not_interested') required this.notInterested,
      @JsonKey(name: 'topic_id') required this.topicId});

  factory _$TopicContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicContextImplFromJson(json);

  @override
  final String description;
  @override
  final bool following;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'not_interested')
  final bool notInterested;
  @override
  @JsonKey(name: 'topic_id')
  final String topicId;

  @override
  String toString() {
    return 'TopicContext(description: $description, following: $following, iconUrl: $iconUrl, id: $id, name: $name, notInterested: $notInterested, topicId: $topicId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicContextImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notInterested, notInterested) ||
                other.notInterested == notInterested) &&
            (identical(other.topicId, topicId) || other.topicId == topicId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, following, iconUrl,
      id, name, notInterested, topicId);

  /// Create a copy of TopicContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicContextImplCopyWith<_$TopicContextImpl> get copyWith =>
      __$$TopicContextImplCopyWithImpl<_$TopicContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicContextImplToJson(
      this,
    );
  }
}

abstract class _TopicContext implements TopicContext {
  const factory _TopicContext(
          {required final String description,
          required final bool following,
          @JsonKey(name: 'icon_url') required final String iconUrl,
          required final String id,
          required final String name,
          @JsonKey(name: 'not_interested') required final bool notInterested,
          @JsonKey(name: 'topic_id') required final String topicId}) =
      _$TopicContextImpl;

  factory _TopicContext.fromJson(Map<String, dynamic> json) =
      _$TopicContextImpl.fromJson;

  @override
  String get description;
  @override
  bool get following;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'not_interested')
  bool get notInterested;
  @override
  @JsonKey(name: 'topic_id')
  String get topicId;

  /// Create a copy of TopicContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicContextImplCopyWith<_$TopicContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
