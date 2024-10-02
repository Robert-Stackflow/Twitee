// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_tombstone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetTombstone _$TweetTombstoneFromJson(Map<String, dynamic> json) {
  return _TweetTombstone.fromJson(json);
}

/// @nodoc
mixin _$TweetTombstone {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this TweetTombstone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetTombstone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetTombstoneCopyWith<TweetTombstone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetTombstoneCopyWith<$Res> {
  factory $TweetTombstoneCopyWith(
          TweetTombstone value, $Res Function(TweetTombstone) then) =
      _$TweetTombstoneCopyWithImpl<$Res, TweetTombstone>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$TweetTombstoneCopyWithImpl<$Res, $Val extends TweetTombstone>
    implements $TweetTombstoneCopyWith<$Res> {
  _$TweetTombstoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetTombstone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetTombstoneImplCopyWith<$Res>
    implements $TweetTombstoneCopyWith<$Res> {
  factory _$$TweetTombstoneImplCopyWith(_$TweetTombstoneImpl value,
          $Res Function(_$TweetTombstoneImpl) then) =
      __$$TweetTombstoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$TweetTombstoneImplCopyWithImpl<$Res>
    extends _$TweetTombstoneCopyWithImpl<$Res, _$TweetTombstoneImpl>
    implements _$$TweetTombstoneImplCopyWith<$Res> {
  __$$TweetTombstoneImplCopyWithImpl(
      _$TweetTombstoneImpl _value, $Res Function(_$TweetTombstoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetTombstone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$TweetTombstoneImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetTombstoneImpl implements _TweetTombstone {
  const _$TweetTombstoneImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$TweetTombstoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetTombstoneImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'TweetTombstone(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetTombstoneImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of TweetTombstone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetTombstoneImplCopyWith<_$TweetTombstoneImpl> get copyWith =>
      __$$TweetTombstoneImplCopyWithImpl<_$TweetTombstoneImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetTombstoneImplToJson(
      this,
    );
  }
}

abstract class _TweetTombstone implements TweetTombstone {
  const factory _TweetTombstone(
      {@JsonKey(name: '__typename')
      required final TypeName privateTypename}) = _$TweetTombstoneImpl;

  factory _TweetTombstone.fromJson(Map<String, dynamic> json) =
      _$TweetTombstoneImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of TweetTombstone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetTombstoneImplCopyWith<_$TweetTombstoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
