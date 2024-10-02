// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweet _$NoteTweetFromJson(Map<String, dynamic> json) {
  return _NoteTweet.fromJson(json);
}

/// @nodoc
mixin _$NoteTweet {
  @JsonKey(name: 'is_expandable')
  bool get isExpandable => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_tweet_results')
  NoteTweetResult get noteTweetResults => throw _privateConstructorUsedError;

  /// Serializes this NoteTweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetCopyWith<NoteTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetCopyWith<$Res> {
  factory $NoteTweetCopyWith(NoteTweet value, $Res Function(NoteTweet) then) =
      _$NoteTweetCopyWithImpl<$Res, NoteTweet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_expandable') bool isExpandable,
      @JsonKey(name: 'note_tweet_results') NoteTweetResult noteTweetResults});

  $NoteTweetResultCopyWith<$Res> get noteTweetResults;
}

/// @nodoc
class _$NoteTweetCopyWithImpl<$Res, $Val extends NoteTweet>
    implements $NoteTweetCopyWith<$Res> {
  _$NoteTweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpandable = null,
    Object? noteTweetResults = null,
  }) {
    return _then(_value.copyWith(
      isExpandable: null == isExpandable
          ? _value.isExpandable
          : isExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      noteTweetResults: null == noteTweetResults
          ? _value.noteTweetResults
          : noteTweetResults // ignore: cast_nullable_to_non_nullable
              as NoteTweetResult,
    ) as $Val);
  }

  /// Create a copy of NoteTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteTweetResultCopyWith<$Res> get noteTweetResults {
    return $NoteTweetResultCopyWith<$Res>(_value.noteTweetResults, (value) {
      return _then(_value.copyWith(noteTweetResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteTweetImplCopyWith<$Res>
    implements $NoteTweetCopyWith<$Res> {
  factory _$$NoteTweetImplCopyWith(
          _$NoteTweetImpl value, $Res Function(_$NoteTweetImpl) then) =
      __$$NoteTweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_expandable') bool isExpandable,
      @JsonKey(name: 'note_tweet_results') NoteTweetResult noteTweetResults});

  @override
  $NoteTweetResultCopyWith<$Res> get noteTweetResults;
}

/// @nodoc
class __$$NoteTweetImplCopyWithImpl<$Res>
    extends _$NoteTweetCopyWithImpl<$Res, _$NoteTweetImpl>
    implements _$$NoteTweetImplCopyWith<$Res> {
  __$$NoteTweetImplCopyWithImpl(
      _$NoteTweetImpl _value, $Res Function(_$NoteTweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpandable = null,
    Object? noteTweetResults = null,
  }) {
    return _then(_$NoteTweetImpl(
      isExpandable: null == isExpandable
          ? _value.isExpandable
          : isExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      noteTweetResults: null == noteTweetResults
          ? _value.noteTweetResults
          : noteTweetResults // ignore: cast_nullable_to_non_nullable
              as NoteTweetResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetImpl implements _NoteTweet {
  const _$NoteTweetImpl(
      {@JsonKey(name: 'is_expandable') required this.isExpandable,
      @JsonKey(name: 'note_tweet_results') required this.noteTweetResults});

  factory _$NoteTweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteTweetImplFromJson(json);

  @override
  @JsonKey(name: 'is_expandable')
  final bool isExpandable;
  @override
  @JsonKey(name: 'note_tweet_results')
  final NoteTweetResult noteTweetResults;

  @override
  String toString() {
    return 'NoteTweet(isExpandable: $isExpandable, noteTweetResults: $noteTweetResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetImpl &&
            (identical(other.isExpandable, isExpandable) ||
                other.isExpandable == isExpandable) &&
            (identical(other.noteTweetResults, noteTweetResults) ||
                other.noteTweetResults == noteTweetResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isExpandable, noteTweetResults);

  /// Create a copy of NoteTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetImplCopyWith<_$NoteTweetImpl> get copyWith =>
      __$$NoteTweetImplCopyWithImpl<_$NoteTweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetImplToJson(
      this,
    );
  }
}

abstract class _NoteTweet implements NoteTweet {
  const factory _NoteTweet(
      {@JsonKey(name: 'is_expandable') required final bool isExpandable,
      @JsonKey(name: 'note_tweet_results')
      required final NoteTweetResult noteTweetResults}) = _$NoteTweetImpl;

  factory _NoteTweet.fromJson(Map<String, dynamic> json) =
      _$NoteTweetImpl.fromJson;

  @override
  @JsonKey(name: 'is_expandable')
  bool get isExpandable;
  @override
  @JsonKey(name: 'note_tweet_results')
  NoteTweetResult get noteTweetResults;

  /// Create a copy of NoteTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetImplCopyWith<_$NoteTweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
