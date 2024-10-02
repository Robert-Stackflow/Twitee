// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Entities _$EntitiesFromJson(Map<String, dynamic> json) {
  return _Entities.fromJson(json);
}

/// @nodoc
mixin _$Entities {
  List<Hashtag> get hashtags => throw _privateConstructorUsedError;
  List<Media> get media => throw _privateConstructorUsedError;
  List<Symbol> get symbols => throw _privateConstructorUsedError;
  List<Timestamp> get timestamps => throw _privateConstructorUsedError;
  List<Url> get urls => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_mentions')
  List<UserMention> get userMentions => throw _privateConstructorUsedError;

  /// Serializes this Entities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Entities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntitiesCopyWith<Entities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntitiesCopyWith<$Res> {
  factory $EntitiesCopyWith(Entities value, $Res Function(Entities) then) =
      _$EntitiesCopyWithImpl<$Res, Entities>;
  @useResult
  $Res call(
      {List<Hashtag> hashtags,
      List<Media> media,
      List<Symbol> symbols,
      List<Timestamp> timestamps,
      List<Url> urls,
      @JsonKey(name: 'user_mentions') List<UserMention> userMentions});
}

/// @nodoc
class _$EntitiesCopyWithImpl<$Res, $Val extends Entities>
    implements $EntitiesCopyWith<$Res> {
  _$EntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Entities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashtags = null,
    Object? media = null,
    Object? symbols = null,
    Object? timestamps = null,
    Object? urls = null,
    Object? userMentions = null,
  }) {
    return _then(_value.copyWith(
      hashtags: null == hashtags
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Hashtag>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      symbols: null == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<Symbol>,
      timestamps: null == timestamps
          ? _value.timestamps
          : timestamps // ignore: cast_nullable_to_non_nullable
              as List<Timestamp>,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>,
      userMentions: null == userMentions
          ? _value.userMentions
          : userMentions // ignore: cast_nullable_to_non_nullable
              as List<UserMention>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntitiesImplCopyWith<$Res>
    implements $EntitiesCopyWith<$Res> {
  factory _$$EntitiesImplCopyWith(
          _$EntitiesImpl value, $Res Function(_$EntitiesImpl) then) =
      __$$EntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Hashtag> hashtags,
      List<Media> media,
      List<Symbol> symbols,
      List<Timestamp> timestamps,
      List<Url> urls,
      @JsonKey(name: 'user_mentions') List<UserMention> userMentions});
}

/// @nodoc
class __$$EntitiesImplCopyWithImpl<$Res>
    extends _$EntitiesCopyWithImpl<$Res, _$EntitiesImpl>
    implements _$$EntitiesImplCopyWith<$Res> {
  __$$EntitiesImplCopyWithImpl(
      _$EntitiesImpl _value, $Res Function(_$EntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Entities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashtags = null,
    Object? media = null,
    Object? symbols = null,
    Object? timestamps = null,
    Object? urls = null,
    Object? userMentions = null,
  }) {
    return _then(_$EntitiesImpl(
      hashtags: null == hashtags
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Hashtag>,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      symbols: null == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<Symbol>,
      timestamps: null == timestamps
          ? _value._timestamps
          : timestamps // ignore: cast_nullable_to_non_nullable
              as List<Timestamp>,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>,
      userMentions: null == userMentions
          ? _value._userMentions
          : userMentions // ignore: cast_nullable_to_non_nullable
              as List<UserMention>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntitiesImpl implements _Entities {
  const _$EntitiesImpl(
      {required final List<Hashtag> hashtags,
      required final List<Media> media,
      required final List<Symbol> symbols,
      required final List<Timestamp> timestamps,
      required final List<Url> urls,
      @JsonKey(name: 'user_mentions')
      required final List<UserMention> userMentions})
      : _hashtags = hashtags,
        _media = media,
        _symbols = symbols,
        _timestamps = timestamps,
        _urls = urls,
        _userMentions = userMentions;

  factory _$EntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntitiesImplFromJson(json);

  final List<Hashtag> _hashtags;
  @override
  List<Hashtag> get hashtags {
    if (_hashtags is EqualUnmodifiableListView) return _hashtags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hashtags);
  }

  final List<Media> _media;
  @override
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<Symbol> _symbols;
  @override
  List<Symbol> get symbols {
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  final List<Timestamp> _timestamps;
  @override
  List<Timestamp> get timestamps {
    if (_timestamps is EqualUnmodifiableListView) return _timestamps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timestamps);
  }

  final List<Url> _urls;
  @override
  List<Url> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  final List<UserMention> _userMentions;
  @override
  @JsonKey(name: 'user_mentions')
  List<UserMention> get userMentions {
    if (_userMentions is EqualUnmodifiableListView) return _userMentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userMentions);
  }

  @override
  String toString() {
    return 'Entities(hashtags: $hashtags, media: $media, symbols: $symbols, timestamps: $timestamps, urls: $urls, userMentions: $userMentions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntitiesImpl &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            const DeepCollectionEquality()
                .equals(other._timestamps, _timestamps) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality()
                .equals(other._userMentions, _userMentions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hashtags),
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_symbols),
      const DeepCollectionEquality().hash(_timestamps),
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(_userMentions));

  /// Create a copy of Entities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntitiesImplCopyWith<_$EntitiesImpl> get copyWith =>
      __$$EntitiesImplCopyWithImpl<_$EntitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntitiesImplToJson(
      this,
    );
  }
}

abstract class _Entities implements Entities {
  const factory _Entities(
      {required final List<Hashtag> hashtags,
      required final List<Media> media,
      required final List<Symbol> symbols,
      required final List<Timestamp> timestamps,
      required final List<Url> urls,
      @JsonKey(name: 'user_mentions')
      required final List<UserMention> userMentions}) = _$EntitiesImpl;

  factory _Entities.fromJson(Map<String, dynamic> json) =
      _$EntitiesImpl.fromJson;

  @override
  List<Hashtag> get hashtags;
  @override
  List<Media> get media;
  @override
  List<Symbol> get symbols;
  @override
  List<Timestamp> get timestamps;
  @override
  List<Url> get urls;
  @override
  @JsonKey(name: 'user_mentions')
  List<UserMention> get userMentions;

  /// Create a copy of Entities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntitiesImplCopyWith<_$EntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
