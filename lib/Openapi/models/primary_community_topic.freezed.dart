// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_community_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrimaryCommunityTopic _$PrimaryCommunityTopicFromJson(
    Map<String, dynamic> json) {
  return _PrimaryCommunityTopic.fromJson(json);
}

/// @nodoc
mixin _$PrimaryCommunityTopic {
  @JsonKey(name: 'topic_id')
  String get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_name')
  String get topicName => throw _privateConstructorUsedError;

  /// Serializes this PrimaryCommunityTopic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrimaryCommunityTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimaryCommunityTopicCopyWith<PrimaryCommunityTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryCommunityTopicCopyWith<$Res> {
  factory $PrimaryCommunityTopicCopyWith(PrimaryCommunityTopic value,
          $Res Function(PrimaryCommunityTopic) then) =
      _$PrimaryCommunityTopicCopyWithImpl<$Res, PrimaryCommunityTopic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'topic_id') String topicId,
      @JsonKey(name: 'topic_name') String topicName});
}

/// @nodoc
class _$PrimaryCommunityTopicCopyWithImpl<$Res,
        $Val extends PrimaryCommunityTopic>
    implements $PrimaryCommunityTopicCopyWith<$Res> {
  _$PrimaryCommunityTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrimaryCommunityTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? topicName = null,
  }) {
    return _then(_value.copyWith(
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryCommunityTopicImplCopyWith<$Res>
    implements $PrimaryCommunityTopicCopyWith<$Res> {
  factory _$$PrimaryCommunityTopicImplCopyWith(
          _$PrimaryCommunityTopicImpl value,
          $Res Function(_$PrimaryCommunityTopicImpl) then) =
      __$$PrimaryCommunityTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'topic_id') String topicId,
      @JsonKey(name: 'topic_name') String topicName});
}

/// @nodoc
class __$$PrimaryCommunityTopicImplCopyWithImpl<$Res>
    extends _$PrimaryCommunityTopicCopyWithImpl<$Res,
        _$PrimaryCommunityTopicImpl>
    implements _$$PrimaryCommunityTopicImplCopyWith<$Res> {
  __$$PrimaryCommunityTopicImplCopyWithImpl(_$PrimaryCommunityTopicImpl _value,
      $Res Function(_$PrimaryCommunityTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrimaryCommunityTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? topicName = null,
  }) {
    return _then(_$PrimaryCommunityTopicImpl(
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimaryCommunityTopicImpl implements _PrimaryCommunityTopic {
  const _$PrimaryCommunityTopicImpl(
      {@JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'topic_name') required this.topicName});

  factory _$PrimaryCommunityTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimaryCommunityTopicImplFromJson(json);

  @override
  @JsonKey(name: 'topic_id')
  final String topicId;
  @override
  @JsonKey(name: 'topic_name')
  final String topicName;

  @override
  String toString() {
    return 'PrimaryCommunityTopic(topicId: $topicId, topicName: $topicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryCommunityTopicImpl &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, topicId, topicName);

  /// Create a copy of PrimaryCommunityTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryCommunityTopicImplCopyWith<_$PrimaryCommunityTopicImpl>
      get copyWith => __$$PrimaryCommunityTopicImplCopyWithImpl<
          _$PrimaryCommunityTopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimaryCommunityTopicImplToJson(
      this,
    );
  }
}

abstract class _PrimaryCommunityTopic implements PrimaryCommunityTopic {
  const factory _PrimaryCommunityTopic(
          {@JsonKey(name: 'topic_id') required final String topicId,
          @JsonKey(name: 'topic_name') required final String topicName}) =
      _$PrimaryCommunityTopicImpl;

  factory _PrimaryCommunityTopic.fromJson(Map<String, dynamic> json) =
      _$PrimaryCommunityTopicImpl.fromJson;

  @override
  @JsonKey(name: 'topic_id')
  String get topicId;
  @override
  @JsonKey(name: 'topic_name')
  String get topicName;

  /// Create a copy of PrimaryCommunityTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimaryCommunityTopicImplCopyWith<_$PrimaryCommunityTopicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
