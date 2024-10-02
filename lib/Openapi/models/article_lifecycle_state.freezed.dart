// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_lifecycle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleLifecycleState _$ArticleLifecycleStateFromJson(
    Map<String, dynamic> json) {
  return _ArticleLifecycleState.fromJson(json);
}

/// @nodoc
mixin _$ArticleLifecycleState {
  @JsonKey(name: 'modified_at_secs')
  int get modifiedAtSecs => throw _privateConstructorUsedError;

  /// Serializes this ArticleLifecycleState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleLifecycleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleLifecycleStateCopyWith<ArticleLifecycleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleLifecycleStateCopyWith<$Res> {
  factory $ArticleLifecycleStateCopyWith(ArticleLifecycleState value,
          $Res Function(ArticleLifecycleState) then) =
      _$ArticleLifecycleStateCopyWithImpl<$Res, ArticleLifecycleState>;
  @useResult
  $Res call({@JsonKey(name: 'modified_at_secs') int modifiedAtSecs});
}

/// @nodoc
class _$ArticleLifecycleStateCopyWithImpl<$Res,
        $Val extends ArticleLifecycleState>
    implements $ArticleLifecycleStateCopyWith<$Res> {
  _$ArticleLifecycleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleLifecycleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifiedAtSecs = null,
  }) {
    return _then(_value.copyWith(
      modifiedAtSecs: null == modifiedAtSecs
          ? _value.modifiedAtSecs
          : modifiedAtSecs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleLifecycleStateImplCopyWith<$Res>
    implements $ArticleLifecycleStateCopyWith<$Res> {
  factory _$$ArticleLifecycleStateImplCopyWith(
          _$ArticleLifecycleStateImpl value,
          $Res Function(_$ArticleLifecycleStateImpl) then) =
      __$$ArticleLifecycleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'modified_at_secs') int modifiedAtSecs});
}

/// @nodoc
class __$$ArticleLifecycleStateImplCopyWithImpl<$Res>
    extends _$ArticleLifecycleStateCopyWithImpl<$Res,
        _$ArticleLifecycleStateImpl>
    implements _$$ArticleLifecycleStateImplCopyWith<$Res> {
  __$$ArticleLifecycleStateImplCopyWithImpl(_$ArticleLifecycleStateImpl _value,
      $Res Function(_$ArticleLifecycleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleLifecycleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifiedAtSecs = null,
  }) {
    return _then(_$ArticleLifecycleStateImpl(
      modifiedAtSecs: null == modifiedAtSecs
          ? _value.modifiedAtSecs
          : modifiedAtSecs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleLifecycleStateImpl implements _ArticleLifecycleState {
  const _$ArticleLifecycleStateImpl(
      {@JsonKey(name: 'modified_at_secs') required this.modifiedAtSecs});

  factory _$ArticleLifecycleStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleLifecycleStateImplFromJson(json);

  @override
  @JsonKey(name: 'modified_at_secs')
  final int modifiedAtSecs;

  @override
  String toString() {
    return 'ArticleLifecycleState(modifiedAtSecs: $modifiedAtSecs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleLifecycleStateImpl &&
            (identical(other.modifiedAtSecs, modifiedAtSecs) ||
                other.modifiedAtSecs == modifiedAtSecs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, modifiedAtSecs);

  /// Create a copy of ArticleLifecycleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleLifecycleStateImplCopyWith<_$ArticleLifecycleStateImpl>
      get copyWith => __$$ArticleLifecycleStateImplCopyWithImpl<
          _$ArticleLifecycleStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleLifecycleStateImplToJson(
      this,
    );
  }
}

abstract class _ArticleLifecycleState implements ArticleLifecycleState {
  const factory _ArticleLifecycleState(
      {@JsonKey(name: 'modified_at_secs')
      required final int modifiedAtSecs}) = _$ArticleLifecycleStateImpl;

  factory _ArticleLifecycleState.fromJson(Map<String, dynamic> json) =
      _$ArticleLifecycleStateImpl.fromJson;

  @override
  @JsonKey(name: 'modified_at_secs')
  int get modifiedAtSecs;

  /// Create a copy of ArticleLifecycleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleLifecycleStateImplCopyWith<_$ArticleLifecycleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
