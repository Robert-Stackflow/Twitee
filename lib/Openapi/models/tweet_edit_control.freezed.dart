// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_edit_control.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetEditControl _$TweetEditControlFromJson(Map<String, dynamic> json) {
  return _TweetEditControl.fromJson(json);
}

/// @nodoc
mixin _$TweetEditControl {
  @JsonKey(name: 'edit_control_initial')
  TweetEditControlInitial get editControlInitial =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'edit_tweet_ids')
  List<String> get editTweetIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'editable_until_msecs')
  String get editableUntilMsecs => throw _privateConstructorUsedError;
  @JsonKey(name: 'edits_remaining')
  String get editsRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'initial_tweet_id')
  String get initialTweetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_edit_eligible')
  bool get isEditEligible => throw _privateConstructorUsedError;

  /// Serializes this TweetEditControl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetEditControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetEditControlCopyWith<TweetEditControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEditControlCopyWith<$Res> {
  factory $TweetEditControlCopyWith(
          TweetEditControl value, $Res Function(TweetEditControl) then) =
      _$TweetEditControlCopyWithImpl<$Res, TweetEditControl>;
  @useResult
  $Res call(
      {@JsonKey(name: 'edit_control_initial')
      TweetEditControlInitial editControlInitial,
      @JsonKey(name: 'edit_tweet_ids') List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs') String editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') String editsRemaining,
      @JsonKey(name: 'initial_tweet_id') String initialTweetId,
      @JsonKey(name: 'is_edit_eligible') bool isEditEligible});

  $TweetEditControlInitialCopyWith<$Res> get editControlInitial;
}

/// @nodoc
class _$TweetEditControlCopyWithImpl<$Res, $Val extends TweetEditControl>
    implements $TweetEditControlCopyWith<$Res> {
  _$TweetEditControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetEditControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editControlInitial = null,
    Object? editTweetIds = null,
    Object? editableUntilMsecs = null,
    Object? editsRemaining = null,
    Object? initialTweetId = null,
    Object? isEditEligible = null,
  }) {
    return _then(_value.copyWith(
      editControlInitial: null == editControlInitial
          ? _value.editControlInitial
          : editControlInitial // ignore: cast_nullable_to_non_nullable
              as TweetEditControlInitial,
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
      initialTweetId: null == initialTweetId
          ? _value.initialTweetId
          : initialTweetId // ignore: cast_nullable_to_non_nullable
              as String,
      isEditEligible: null == isEditEligible
          ? _value.isEditEligible
          : isEditEligible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of TweetEditControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetEditControlInitialCopyWith<$Res> get editControlInitial {
    return $TweetEditControlInitialCopyWith<$Res>(_value.editControlInitial,
        (value) {
      return _then(_value.copyWith(editControlInitial: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetEditControlImplCopyWith<$Res>
    implements $TweetEditControlCopyWith<$Res> {
  factory _$$TweetEditControlImplCopyWith(_$TweetEditControlImpl value,
          $Res Function(_$TweetEditControlImpl) then) =
      __$$TweetEditControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'edit_control_initial')
      TweetEditControlInitial editControlInitial,
      @JsonKey(name: 'edit_tweet_ids') List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs') String editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') String editsRemaining,
      @JsonKey(name: 'initial_tweet_id') String initialTweetId,
      @JsonKey(name: 'is_edit_eligible') bool isEditEligible});

  @override
  $TweetEditControlInitialCopyWith<$Res> get editControlInitial;
}

/// @nodoc
class __$$TweetEditControlImplCopyWithImpl<$Res>
    extends _$TweetEditControlCopyWithImpl<$Res, _$TweetEditControlImpl>
    implements _$$TweetEditControlImplCopyWith<$Res> {
  __$$TweetEditControlImplCopyWithImpl(_$TweetEditControlImpl _value,
      $Res Function(_$TweetEditControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetEditControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editControlInitial = null,
    Object? editTweetIds = null,
    Object? editableUntilMsecs = null,
    Object? editsRemaining = null,
    Object? initialTweetId = null,
    Object? isEditEligible = null,
  }) {
    return _then(_$TweetEditControlImpl(
      editControlInitial: null == editControlInitial
          ? _value.editControlInitial
          : editControlInitial // ignore: cast_nullable_to_non_nullable
              as TweetEditControlInitial,
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
      initialTweetId: null == initialTweetId
          ? _value.initialTweetId
          : initialTweetId // ignore: cast_nullable_to_non_nullable
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
class _$TweetEditControlImpl implements _TweetEditControl {
  const _$TweetEditControlImpl(
      {@JsonKey(name: 'edit_control_initial') required this.editControlInitial,
      @JsonKey(name: 'edit_tweet_ids') required final List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs') required this.editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') required this.editsRemaining,
      @JsonKey(name: 'initial_tweet_id') required this.initialTweetId,
      @JsonKey(name: 'is_edit_eligible') required this.isEditEligible})
      : _editTweetIds = editTweetIds;

  factory _$TweetEditControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetEditControlImplFromJson(json);

  @override
  @JsonKey(name: 'edit_control_initial')
  final TweetEditControlInitial editControlInitial;
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
  @JsonKey(name: 'initial_tweet_id')
  final String initialTweetId;
  @override
  @JsonKey(name: 'is_edit_eligible')
  final bool isEditEligible;

  @override
  String toString() {
    return 'TweetEditControl(editControlInitial: $editControlInitial, editTweetIds: $editTweetIds, editableUntilMsecs: $editableUntilMsecs, editsRemaining: $editsRemaining, initialTweetId: $initialTweetId, isEditEligible: $isEditEligible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetEditControlImpl &&
            (identical(other.editControlInitial, editControlInitial) ||
                other.editControlInitial == editControlInitial) &&
            const DeepCollectionEquality()
                .equals(other._editTweetIds, _editTweetIds) &&
            (identical(other.editableUntilMsecs, editableUntilMsecs) ||
                other.editableUntilMsecs == editableUntilMsecs) &&
            (identical(other.editsRemaining, editsRemaining) ||
                other.editsRemaining == editsRemaining) &&
            (identical(other.initialTweetId, initialTweetId) ||
                other.initialTweetId == initialTweetId) &&
            (identical(other.isEditEligible, isEditEligible) ||
                other.isEditEligible == isEditEligible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      editControlInitial,
      const DeepCollectionEquality().hash(_editTweetIds),
      editableUntilMsecs,
      editsRemaining,
      initialTweetId,
      isEditEligible);

  /// Create a copy of TweetEditControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetEditControlImplCopyWith<_$TweetEditControlImpl> get copyWith =>
      __$$TweetEditControlImplCopyWithImpl<_$TweetEditControlImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetEditControlImplToJson(
      this,
    );
  }
}

abstract class _TweetEditControl implements TweetEditControl {
  const factory _TweetEditControl(
      {@JsonKey(name: 'edit_control_initial')
      required final TweetEditControlInitial editControlInitial,
      @JsonKey(name: 'edit_tweet_ids') required final List<String> editTweetIds,
      @JsonKey(name: 'editable_until_msecs')
      required final String editableUntilMsecs,
      @JsonKey(name: 'edits_remaining') required final String editsRemaining,
      @JsonKey(name: 'initial_tweet_id') required final String initialTweetId,
      @JsonKey(name: 'is_edit_eligible')
      required final bool isEditEligible}) = _$TweetEditControlImpl;

  factory _TweetEditControl.fromJson(Map<String, dynamic> json) =
      _$TweetEditControlImpl.fromJson;

  @override
  @JsonKey(name: 'edit_control_initial')
  TweetEditControlInitial get editControlInitial;
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
  @JsonKey(name: 'initial_tweet_id')
  String get initialTweetId;
  @override
  @JsonKey(name: 'is_edit_eligible')
  bool get isEditEligible;

  /// Create a copy of TweetEditControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetEditControlImplCopyWith<_$TweetEditControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
