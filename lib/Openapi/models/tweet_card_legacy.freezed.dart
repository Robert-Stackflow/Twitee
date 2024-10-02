// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_legacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardLegacy _$TweetCardLegacyFromJson(Map<String, dynamic> json) {
  return _TweetCardLegacy.fromJson(json);
}

/// @nodoc
mixin _$TweetCardLegacy {
  @JsonKey(name: 'binding_values')
  List<TweetCardLegacyBindingValue> get bindingValues =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'card_platform')
  TweetCardPlatformData get cardPlatform => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_refs_results')
  List<UserResults> get userRefsResults => throw _privateConstructorUsedError;

  /// Serializes this TweetCardLegacy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardLegacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardLegacyCopyWith<TweetCardLegacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardLegacyCopyWith<$Res> {
  factory $TweetCardLegacyCopyWith(
          TweetCardLegacy value, $Res Function(TweetCardLegacy) then) =
      _$TweetCardLegacyCopyWithImpl<$Res, TweetCardLegacy>;
  @useResult
  $Res call(
      {@JsonKey(name: 'binding_values')
      List<TweetCardLegacyBindingValue> bindingValues,
      @JsonKey(name: 'card_platform') TweetCardPlatformData cardPlatform,
      String name,
      String url,
      @JsonKey(name: 'user_refs_results') List<UserResults> userRefsResults});

  $TweetCardPlatformDataCopyWith<$Res> get cardPlatform;
}

/// @nodoc
class _$TweetCardLegacyCopyWithImpl<$Res, $Val extends TweetCardLegacy>
    implements $TweetCardLegacyCopyWith<$Res> {
  _$TweetCardLegacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardLegacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bindingValues = null,
    Object? cardPlatform = null,
    Object? name = null,
    Object? url = null,
    Object? userRefsResults = null,
  }) {
    return _then(_value.copyWith(
      bindingValues: null == bindingValues
          ? _value.bindingValues
          : bindingValues // ignore: cast_nullable_to_non_nullable
              as List<TweetCardLegacyBindingValue>,
      cardPlatform: null == cardPlatform
          ? _value.cardPlatform
          : cardPlatform // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformData,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      userRefsResults: null == userRefsResults
          ? _value.userRefsResults
          : userRefsResults // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
    ) as $Val);
  }

  /// Create a copy of TweetCardLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardPlatformDataCopyWith<$Res> get cardPlatform {
    return $TweetCardPlatformDataCopyWith<$Res>(_value.cardPlatform, (value) {
      return _then(_value.copyWith(cardPlatform: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetCardLegacyImplCopyWith<$Res>
    implements $TweetCardLegacyCopyWith<$Res> {
  factory _$$TweetCardLegacyImplCopyWith(_$TweetCardLegacyImpl value,
          $Res Function(_$TweetCardLegacyImpl) then) =
      __$$TweetCardLegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'binding_values')
      List<TweetCardLegacyBindingValue> bindingValues,
      @JsonKey(name: 'card_platform') TweetCardPlatformData cardPlatform,
      String name,
      String url,
      @JsonKey(name: 'user_refs_results') List<UserResults> userRefsResults});

  @override
  $TweetCardPlatformDataCopyWith<$Res> get cardPlatform;
}

/// @nodoc
class __$$TweetCardLegacyImplCopyWithImpl<$Res>
    extends _$TweetCardLegacyCopyWithImpl<$Res, _$TweetCardLegacyImpl>
    implements _$$TweetCardLegacyImplCopyWith<$Res> {
  __$$TweetCardLegacyImplCopyWithImpl(
      _$TweetCardLegacyImpl _value, $Res Function(_$TweetCardLegacyImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardLegacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bindingValues = null,
    Object? cardPlatform = null,
    Object? name = null,
    Object? url = null,
    Object? userRefsResults = null,
  }) {
    return _then(_$TweetCardLegacyImpl(
      bindingValues: null == bindingValues
          ? _value._bindingValues
          : bindingValues // ignore: cast_nullable_to_non_nullable
              as List<TweetCardLegacyBindingValue>,
      cardPlatform: null == cardPlatform
          ? _value.cardPlatform
          : cardPlatform // ignore: cast_nullable_to_non_nullable
              as TweetCardPlatformData,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      userRefsResults: null == userRefsResults
          ? _value._userRefsResults
          : userRefsResults // ignore: cast_nullable_to_non_nullable
              as List<UserResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardLegacyImpl implements _TweetCardLegacy {
  const _$TweetCardLegacyImpl(
      {@JsonKey(name: 'binding_values')
      required final List<TweetCardLegacyBindingValue> bindingValues,
      @JsonKey(name: 'card_platform') required this.cardPlatform,
      required this.name,
      required this.url,
      @JsonKey(name: 'user_refs_results')
      required final List<UserResults> userRefsResults})
      : _bindingValues = bindingValues,
        _userRefsResults = userRefsResults;

  factory _$TweetCardLegacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetCardLegacyImplFromJson(json);

  final List<TweetCardLegacyBindingValue> _bindingValues;
  @override
  @JsonKey(name: 'binding_values')
  List<TweetCardLegacyBindingValue> get bindingValues {
    if (_bindingValues is EqualUnmodifiableListView) return _bindingValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bindingValues);
  }

  @override
  @JsonKey(name: 'card_platform')
  final TweetCardPlatformData cardPlatform;
  @override
  final String name;
  @override
  final String url;
  final List<UserResults> _userRefsResults;
  @override
  @JsonKey(name: 'user_refs_results')
  List<UserResults> get userRefsResults {
    if (_userRefsResults is EqualUnmodifiableListView) return _userRefsResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userRefsResults);
  }

  @override
  String toString() {
    return 'TweetCardLegacy(bindingValues: $bindingValues, cardPlatform: $cardPlatform, name: $name, url: $url, userRefsResults: $userRefsResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardLegacyImpl &&
            const DeepCollectionEquality()
                .equals(other._bindingValues, _bindingValues) &&
            (identical(other.cardPlatform, cardPlatform) ||
                other.cardPlatform == cardPlatform) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._userRefsResults, _userRefsResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bindingValues),
      cardPlatform,
      name,
      url,
      const DeepCollectionEquality().hash(_userRefsResults));

  /// Create a copy of TweetCardLegacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardLegacyImplCopyWith<_$TweetCardLegacyImpl> get copyWith =>
      __$$TweetCardLegacyImplCopyWithImpl<_$TweetCardLegacyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardLegacyImplToJson(
      this,
    );
  }
}

abstract class _TweetCardLegacy implements TweetCardLegacy {
  const factory _TweetCardLegacy(
          {@JsonKey(name: 'binding_values')
          required final List<TweetCardLegacyBindingValue> bindingValues,
          @JsonKey(name: 'card_platform')
          required final TweetCardPlatformData cardPlatform,
          required final String name,
          required final String url,
          @JsonKey(name: 'user_refs_results')
          required final List<UserResults> userRefsResults}) =
      _$TweetCardLegacyImpl;

  factory _TweetCardLegacy.fromJson(Map<String, dynamic> json) =
      _$TweetCardLegacyImpl.fromJson;

  @override
  @JsonKey(name: 'binding_values')
  List<TweetCardLegacyBindingValue> get bindingValues;
  @override
  @JsonKey(name: 'card_platform')
  TweetCardPlatformData get cardPlatform;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(name: 'user_refs_results')
  List<UserResults> get userRefsResults;

  /// Create a copy of TweetCardLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardLegacyImplCopyWith<_$TweetCardLegacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
