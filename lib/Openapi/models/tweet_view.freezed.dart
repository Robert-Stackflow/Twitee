// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetView _$TweetViewFromJson(Map<String, dynamic> json) {
  return _TweetView.fromJson(json);
}

/// @nodoc
mixin _$TweetView {
  String get count => throw _privateConstructorUsedError;
  TweetViewState get state => throw _privateConstructorUsedError;

  /// Serializes this TweetView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetViewCopyWith<TweetView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetViewCopyWith<$Res> {
  factory $TweetViewCopyWith(TweetView value, $Res Function(TweetView) then) =
      _$TweetViewCopyWithImpl<$Res, TweetView>;
  @useResult
  $Res call({String count, TweetViewState state});
}

/// @nodoc
class _$TweetViewCopyWithImpl<$Res, $Val extends TweetView>
    implements $TweetViewCopyWith<$Res> {
  _$TweetViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TweetViewState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetViewImplCopyWith<$Res>
    implements $TweetViewCopyWith<$Res> {
  factory _$$TweetViewImplCopyWith(
          _$TweetViewImpl value, $Res Function(_$TweetViewImpl) then) =
      __$$TweetViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String count, TweetViewState state});
}

/// @nodoc
class __$$TweetViewImplCopyWithImpl<$Res>
    extends _$TweetViewCopyWithImpl<$Res, _$TweetViewImpl>
    implements _$$TweetViewImplCopyWith<$Res> {
  __$$TweetViewImplCopyWithImpl(
      _$TweetViewImpl _value, $Res Function(_$TweetViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? state = null,
  }) {
    return _then(_$TweetViewImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TweetViewState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetViewImpl implements _TweetView {
  const _$TweetViewImpl({required this.count, required this.state});

  factory _$TweetViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetViewImplFromJson(json);

  @override
  final String count;
  @override
  final TweetViewState state;

  @override
  String toString() {
    return 'TweetView(count: $count, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetViewImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, state);

  /// Create a copy of TweetView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetViewImplCopyWith<_$TweetViewImpl> get copyWith =>
      __$$TweetViewImplCopyWithImpl<_$TweetViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetViewImplToJson(
      this,
    );
  }
}

abstract class _TweetView implements TweetView {
  const factory _TweetView(
      {required final String count,
      required final TweetViewState state}) = _$TweetViewImpl;

  factory _TweetView.fromJson(Map<String, dynamic> json) =
      _$TweetViewImpl.fromJson;

  @override
  String get count;
  @override
  TweetViewState get state;

  /// Create a copy of TweetView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetViewImplCopyWith<_$TweetViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
