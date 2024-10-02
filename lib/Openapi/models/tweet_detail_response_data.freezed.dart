// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_detail_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetDetailResponseData _$TweetDetailResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TweetDetailResponseData.fromJson(json);
}

/// @nodoc
mixin _$TweetDetailResponseData {
  @JsonKey(name: 'threaded_conversation_with_injections_v2')
  Timeline get threadedConversationWithInjectionsV2 =>
      throw _privateConstructorUsedError;

  /// Serializes this TweetDetailResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetDetailResponseDataCopyWith<TweetDetailResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetDetailResponseDataCopyWith<$Res> {
  factory $TweetDetailResponseDataCopyWith(TweetDetailResponseData value,
          $Res Function(TweetDetailResponseData) then) =
      _$TweetDetailResponseDataCopyWithImpl<$Res, TweetDetailResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'threaded_conversation_with_injections_v2')
      Timeline threadedConversationWithInjectionsV2});

  $TimelineCopyWith<$Res> get threadedConversationWithInjectionsV2;
}

/// @nodoc
class _$TweetDetailResponseDataCopyWithImpl<$Res,
        $Val extends TweetDetailResponseData>
    implements $TweetDetailResponseDataCopyWith<$Res> {
  _$TweetDetailResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threadedConversationWithInjectionsV2 = null,
  }) {
    return _then(_value.copyWith(
      threadedConversationWithInjectionsV2: null ==
              threadedConversationWithInjectionsV2
          ? _value.threadedConversationWithInjectionsV2
          : threadedConversationWithInjectionsV2 // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ) as $Val);
  }

  /// Create a copy of TweetDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineCopyWith<$Res> get threadedConversationWithInjectionsV2 {
    return $TimelineCopyWith<$Res>(_value.threadedConversationWithInjectionsV2,
        (value) {
      return _then(
          _value.copyWith(threadedConversationWithInjectionsV2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetDetailResponseDataImplCopyWith<$Res>
    implements $TweetDetailResponseDataCopyWith<$Res> {
  factory _$$TweetDetailResponseDataImplCopyWith(
          _$TweetDetailResponseDataImpl value,
          $Res Function(_$TweetDetailResponseDataImpl) then) =
      __$$TweetDetailResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'threaded_conversation_with_injections_v2')
      Timeline threadedConversationWithInjectionsV2});

  @override
  $TimelineCopyWith<$Res> get threadedConversationWithInjectionsV2;
}

/// @nodoc
class __$$TweetDetailResponseDataImplCopyWithImpl<$Res>
    extends _$TweetDetailResponseDataCopyWithImpl<$Res,
        _$TweetDetailResponseDataImpl>
    implements _$$TweetDetailResponseDataImplCopyWith<$Res> {
  __$$TweetDetailResponseDataImplCopyWithImpl(
      _$TweetDetailResponseDataImpl _value,
      $Res Function(_$TweetDetailResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threadedConversationWithInjectionsV2 = null,
  }) {
    return _then(_$TweetDetailResponseDataImpl(
      threadedConversationWithInjectionsV2: null ==
              threadedConversationWithInjectionsV2
          ? _value.threadedConversationWithInjectionsV2
          : threadedConversationWithInjectionsV2 // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetDetailResponseDataImpl implements _TweetDetailResponseData {
  const _$TweetDetailResponseDataImpl(
      {@JsonKey(name: 'threaded_conversation_with_injections_v2')
      required this.threadedConversationWithInjectionsV2});

  factory _$TweetDetailResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetDetailResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'threaded_conversation_with_injections_v2')
  final Timeline threadedConversationWithInjectionsV2;

  @override
  String toString() {
    return 'TweetDetailResponseData(threadedConversationWithInjectionsV2: $threadedConversationWithInjectionsV2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetDetailResponseDataImpl &&
            (identical(other.threadedConversationWithInjectionsV2,
                    threadedConversationWithInjectionsV2) ||
                other.threadedConversationWithInjectionsV2 ==
                    threadedConversationWithInjectionsV2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, threadedConversationWithInjectionsV2);

  /// Create a copy of TweetDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetDetailResponseDataImplCopyWith<_$TweetDetailResponseDataImpl>
      get copyWith => __$$TweetDetailResponseDataImplCopyWithImpl<
          _$TweetDetailResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetDetailResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TweetDetailResponseData implements TweetDetailResponseData {
  const factory _TweetDetailResponseData(
          {@JsonKey(name: 'threaded_conversation_with_injections_v2')
          required final Timeline threadedConversationWithInjectionsV2}) =
      _$TweetDetailResponseDataImpl;

  factory _TweetDetailResponseData.fromJson(Map<String, dynamic> json) =
      _$TweetDetailResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'threaded_conversation_with_injections_v2')
  Timeline get threadedConversationWithInjectionsV2;

  /// Create a copy of TweetDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetDetailResponseDataImplCopyWith<_$TweetDetailResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
