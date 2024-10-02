// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetUnion _$TweetUnionFromJson(Map<String, dynamic> json) {
  return _TweetUnion.fromJson(json);
}

/// @nodoc
mixin _$TweetUnion {
  /// Serializes this TweetUnion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetUnionCopyWith<$Res> {
  factory $TweetUnionCopyWith(
          TweetUnion value, $Res Function(TweetUnion) then) =
      _$TweetUnionCopyWithImpl<$Res, TweetUnion>;
}

/// @nodoc
class _$TweetUnionCopyWithImpl<$Res, $Val extends TweetUnion>
    implements $TweetUnionCopyWith<$Res> {
  _$TweetUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TweetUnionImplCopyWith<$Res> {
  factory _$$TweetUnionImplCopyWith(
          _$TweetUnionImpl value, $Res Function(_$TweetUnionImpl) then) =
      __$$TweetUnionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TweetUnionImplCopyWithImpl<$Res>
    extends _$TweetUnionCopyWithImpl<$Res, _$TweetUnionImpl>
    implements _$$TweetUnionImplCopyWith<$Res> {
  __$$TweetUnionImplCopyWithImpl(
      _$TweetUnionImpl _value, $Res Function(_$TweetUnionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TweetUnionImpl implements _TweetUnion {
  const _$TweetUnionImpl();

  factory _$TweetUnionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetUnionImplFromJson(json);

  @override
  String toString() {
    return 'TweetUnion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TweetUnionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetUnionImplToJson(
      this,
    );
  }
}

abstract class _TweetUnion implements TweetUnion {
  const factory _TweetUnion() = _$TweetUnionImpl;

  factory _TweetUnion.fromJson(Map<String, dynamic> json) =
      _$TweetUnionImpl.fromJson;
}
