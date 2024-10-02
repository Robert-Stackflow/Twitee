// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_edit_control_initial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetEditControlInitial _$TweetEditControlInitialFromJson(
    Map<String, dynamic> json) {
  return _TweetEditControlInitial.fromJson(json);
}

/// @nodoc
mixin _$TweetEditControlInitial {
  @JsonKey(name: 'edit_tweet_ids')
  List<String> get editTweetIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'editable_until_msecs')
  String get editableUntilMsecs => throw _privateConstructorUsedError;
  @JsonKey(name: 'edits_remaining')
  String get editsRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_edit_eligible')
  bool get isEditEligible => throw _privateConstructorUsedError;

  /// Serializes this TweetEditControlInitial to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetEditControlInitial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetEditControlInitialCopyWith<TweetEditControlInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEditControlInitialCopyWith<$Res> {
  factory $TweetEditControlInitialCopyWith(TweetEditControlInitial value,
          $Res Function(TweetEditControlInitial) then) =
      _$TweetEditControlInitialCopyWithImpl<$Res, TweetEditControlInitial>;
  @useResult
  $Res call(
      {@JsonKey(name: 'edit_tweet_ids') List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs') String editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') String editsRemaining,
      @JsonKey(name: 'is_edit_eligible') bool isEditEligible});
}

/// @nodoc
class _$TweetEditControlInitialCopyWithImpl<$Res,
        $Val extends TweetEditControlInitial>
    implements $TweetEditControlInitialCopyWith<$Res> {
  _$TweetEditControlInitialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetEditControlInitial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editTweetIds = null,
    Object? editableUntilMsecs = null,
    Object? editsRemaining = null,
    Object? isEditEligible = null,
  }) {
    return _then(_value.copyWith(
      editTweetIds: null == editTweetIds
          ? _value.editTweetIds
          : editTweetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      editableUntilMsecs: null == editableUntilMsecs
          ? _value.editableUntilMsecs
          : editableUntilMsecs // ignore: cast_nullable_to_non_nullable
              as String,
      editsRemaining: null == editsRemaining
          ? _value.editsRemaining
          : editsRemaining // ignore: cast_nullable_to_non_nullable
              as String,
      isEditEligible: null == isEditEligible
          ? _value.isEditEligible
          : isEditEligible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetEditControlInitialImplCopyWith<$Res>
    implements $TweetEditControlInitialCopyWith<$Res> {
  factory _$$TweetEditControlInitialImplCopyWith(
          _$TweetEditControlInitialImpl value,
          $Res Function(_$TweetEditControlInitialImpl) then) =
      __$$TweetEditControlInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'edit_tweet_ids') List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs') String editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') String editsRemaining,
      @JsonKey(name: 'is_edit_eligible') bool isEditEligible});
}

/// @nodoc
class __$$TweetEditControlInitialImplCopyWithImpl<$Res>
    extends _$TweetEditControlInitialCopyWithImpl<$Res,
        _$TweetEditControlInitialImpl>
    implements _$$TweetEditControlInitialImplCopyWith<$Res> {
  __$$TweetEditControlInitialImplCopyWithImpl(
      _$TweetEditControlInitialImpl _value,
      $Res Function(_$TweetEditControlInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetEditControlInitial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editTweetIds = null,
    Object? editableUntilMsecs = null,
    Object? editsRemaining = null,
    Object? isEditEligible = null,
  }) {
    return _then(_$TweetEditControlInitialImpl(
      editTweetIds: null == editTweetIds
          ? _value._editTweetIds
          : editTweetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      editableUntilMsecs: null == editableUntilMsecs
          ? _value.editableUntilMsecs
          : editableUntilMsecs // ignore: cast_nullable_to_non_nullable
              as String,
      editsRemaining: null == editsRemaining
          ? _value.editsRemaining
          : editsRemaining // ignore: cast_nullable_to_non_nullable
              as String,
      isEditEligible: null == isEditEligible
          ? _value.isEditEligible
          : isEditEligible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetEditControlInitialImpl implements _TweetEditControlInitial {
  const _$TweetEditControlInitialImpl(
      {@JsonKey(name: 'edit_tweet_ids')
      required final List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs') required this.editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') required this.editsRemaining,
      @JsonKey(name: 'is_edit_eligible') required this.isEditEligible})
      : _editTweetIds = editTweetIds;

  factory _$TweetEditControlInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetEditControlInitialImplFromJson(json);

  final List<String> _editTweetIds;
  @override
  @JsonKey(name: 'edit_tweet_ids')
  List<String> get editTweetIds {
    if (_editTweetIds is EqualUnmodifiableListView) return _editTweetIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editTweetIds);
  }

  @override
  @JsonKey(name: 'editable_until_msecs')
  final String editableUntilMsecs;
  @override
  @JsonKey(name: 'edits_remaining')
  final String editsRemaining;
  @override
  @JsonKey(name: 'is_edit_eligible')
  final bool isEditEligible;

  @override
  String toString() {
    return 'TweetEditControlInitial(editTweetIds: $editTweetIds, editableUntilMsecs: $editableUntilMsecs, editsRemaining: $editsRemaining, isEditEligible: $isEditEligible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetEditControlInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._editTweetIds, _editTweetIds) &&
            (identical(other.editableUntilMsecs, editableUntilMsecs) ||
                other.editableUntilMsecs == editableUntilMsecs) &&
            (identical(other.editsRemaining, editsRemaining) ||
                other.editsRemaining == editsRemaining) &&
            (identical(other.isEditEligible, isEditEligible) ||
                other.isEditEligible == isEditEligible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_editTweetIds),
      editableUntilMsecs,
      editsRemaining,
      isEditEligible);

  /// Create a copy of TweetEditControlInitial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetEditControlInitialImplCopyWith<_$TweetEditControlInitialImpl>
      get copyWith => __$$TweetEditControlInitialImplCopyWithImpl<
          _$TweetEditControlInitialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetEditControlInitialImplToJson(
      this,
    );
  }
}

abstract class _TweetEditControlInitial implements TweetEditControlInitial {
  const factory _TweetEditControlInitial(
      {@JsonKey(name: 'edit_tweet_ids')
      required final List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs')
      required final String editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') required final String editsRemaining,
      @JsonKey(name: 'is_edit_eligible')
      required final bool isEditEligible}) = _$TweetEditControlInitialImpl;

  factory _TweetEditControlInitial.fromJson(Map<String, dynamic> json) =
      _$TweetEditControlInitialImpl.fromJson;

  @override
  @JsonKey(name: 'edit_tweet_ids')
  List<String> get editTweetIds;
  @override
  @JsonKey(name: 'editable_until_msecs')
  String get editableUntilMsecs;
  @override
  @JsonKey(name: 'edits_remaining')
  String get editsRemaining;
  @override
  @JsonKey(name: 'is_edit_eligible')
  bool get isEditEligible;

  /// Create a copy of TweetEditControlInitial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetEditControlInitialImplCopyWith<_$TweetEditControlInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
