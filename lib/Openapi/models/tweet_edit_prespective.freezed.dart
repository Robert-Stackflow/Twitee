// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_edit_prespective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetEditPrespective _$TweetEditPrespectiveFromJson(Map<String, dynamic> json) {
  return _TweetEditPrespective.fromJson(json);
}

/// @nodoc
mixin _$TweetEditPrespective {
  bool get favorited => throw _privateConstructorUsedError;
  bool get retweeted => throw _privateConstructorUsedError;

  /// Serializes this TweetEditPrespective to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetEditPrespective
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetEditPrespectiveCopyWith<TweetEditPrespective> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEditPrespectiveCopyWith<$Res> {
  factory $TweetEditPrespectiveCopyWith(TweetEditPrespective value,
          $Res Function(TweetEditPrespective) then) =
      _$TweetEditPrespectiveCopyWithImpl<$Res, TweetEditPrespective>;
  @useResult
  $Res call({bool favorited, bool retweeted});
}

/// @nodoc
class _$TweetEditPrespectiveCopyWithImpl<$Res,
        $Val extends TweetEditPrespective>
    implements $TweetEditPrespectiveCopyWith<$Res> {
  _$TweetEditPrespectiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetEditPrespective
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorited = null,
    Object? retweeted = null,
  }) {
    return _then(_value.copyWith(
      favorited: null == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
      retweeted: null == retweeted
          ? _value.retweeted
          : retweeted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetEditPrespectiveImplCopyWith<$Res>
    implements $TweetEditPrespectiveCopyWith<$Res> {
  factory _$$TweetEditPrespectiveImplCopyWith(_$TweetEditPrespectiveImpl value,
          $Res Function(_$TweetEditPrespectiveImpl) then) =
      __$$TweetEditPrespectiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool favorited, bool retweeted});
}

/// @nodoc
class __$$TweetEditPrespectiveImplCopyWithImpl<$Res>
    extends _$TweetEditPrespectiveCopyWithImpl<$Res, _$TweetEditPrespectiveImpl>
    implements _$$TweetEditPrespectiveImplCopyWith<$Res> {
  __$$TweetEditPrespectiveImplCopyWithImpl(_$TweetEditPrespectiveImpl _value,
      $Res Function(_$TweetEditPrespectiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetEditPrespective
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorited = null,
    Object? retweeted = null,
  }) {
    return _then(_$TweetEditPrespectiveImpl(
      favorited: null == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
      retweeted: null == retweeted
          ? _value.retweeted
          : retweeted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetEditPrespectiveImpl implements _TweetEditPrespective {
  const _$TweetEditPrespectiveImpl(
      {required this.favorited, required this.retweeted});

  factory _$TweetEditPrespectiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetEditPrespectiveImplFromJson(json);

  @override
  final bool favorited;
  @override
  final bool retweeted;

  @override
  String toString() {
    return 'TweetEditPrespective(favorited: $favorited, retweeted: $retweeted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetEditPrespectiveImpl &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited) &&
            (identical(other.retweeted, retweeted) ||
                other.retweeted == retweeted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, favorited, retweeted);

  /// Create a copy of TweetEditPrespective
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetEditPrespectiveImplCopyWith<_$TweetEditPrespectiveImpl>
      get copyWith =>
          __$$TweetEditPrespectiveImplCopyWithImpl<_$TweetEditPrespectiveImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetEditPrespectiveImplToJson(
      this,
    );
  }
}

abstract class _TweetEditPrespective implements TweetEditPrespective {
  const factory _TweetEditPrespective(
      {required final bool favorited,
      required final bool retweeted}) = _$TweetEditPrespectiveImpl;

  factory _TweetEditPrespective.fromJson(Map<String, dynamic> json) =
      _$TweetEditPrespectiveImpl.fromJson;

  @override
  bool get favorited;
  @override
  bool get retweeted;

  /// Create a copy of TweetEditPrespective
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetEditPrespectiveImplCopyWith<_$TweetEditPrespectiveImpl>
      get copyWith => throw _privateConstructorUsedError;
}
