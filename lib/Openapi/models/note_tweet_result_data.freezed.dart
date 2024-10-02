// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweetResultData _$NoteTweetResultDataFromJson(Map<String, dynamic> json) {
  return _NoteTweetResultData.fromJson(json);
}

/// @nodoc
mixin _$NoteTweetResultData {
  @JsonKey(name: 'entity_set')
  Entities get entitySet => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  NoteTweetResultMedia get media => throw _privateConstructorUsedError;
  NoteTweetResultRichText get richtext => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this NoteTweetResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetResultDataCopyWith<NoteTweetResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetResultDataCopyWith<$Res> {
  factory $NoteTweetResultDataCopyWith(
          NoteTweetResultData value, $Res Function(NoteTweetResultData) then) =
      _$NoteTweetResultDataCopyWithImpl<$Res, NoteTweetResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entity_set') Entities entitySet,
      String id,
      NoteTweetResultMedia media,
      NoteTweetResultRichText richtext,
      String text});

  $EntitiesCopyWith<$Res> get entitySet;
  $NoteTweetResultMediaCopyWith<$Res> get media;
  $NoteTweetResultRichTextCopyWith<$Res> get richtext;
}

/// @nodoc
class _$NoteTweetResultDataCopyWithImpl<$Res, $Val extends NoteTweetResultData>
    implements $NoteTweetResultDataCopyWith<$Res> {
  _$NoteTweetResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entitySet = null,
    Object? id = null,
    Object? media = null,
    Object? richtext = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      entitySet: null == entitySet
          ? _value.entitySet
          : entitySet // ignore: cast_nullable_to_non_nullable
              as Entities,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as NoteTweetResultMedia,
      richtext: null == richtext
          ? _value.richtext
          : richtext // ignore: cast_nullable_to_non_nullable
              as NoteTweetResultRichText,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntitiesCopyWith<$Res> get entitySet {
    return $EntitiesCopyWith<$Res>(_value.entitySet, (value) {
      return _then(_value.copyWith(entitySet: value) as $Val);
    });
  }

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteTweetResultMediaCopyWith<$Res> get media {
    return $NoteTweetResultMediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteTweetResultRichTextCopyWith<$Res> get richtext {
    return $NoteTweetResultRichTextCopyWith<$Res>(_value.richtext, (value) {
      return _then(_value.copyWith(richtext: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteTweetResultDataImplCopyWith<$Res>
    implements $NoteTweetResultDataCopyWith<$Res> {
  factory _$$NoteTweetResultDataImplCopyWith(_$NoteTweetResultDataImpl value,
          $Res Function(_$NoteTweetResultDataImpl) then) =
      __$$NoteTweetResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entity_set') Entities entitySet,
      String id,
      NoteTweetResultMedia media,
      NoteTweetResultRichText richtext,
      String text});

  @override
  $EntitiesCopyWith<$Res> get entitySet;
  @override
  $NoteTweetResultMediaCopyWith<$Res> get media;
  @override
  $NoteTweetResultRichTextCopyWith<$Res> get richtext;
}

/// @nodoc
class __$$NoteTweetResultDataImplCopyWithImpl<$Res>
    extends _$NoteTweetResultDataCopyWithImpl<$Res, _$NoteTweetResultDataImpl>
    implements _$$NoteTweetResultDataImplCopyWith<$Res> {
  __$$NoteTweetResultDataImplCopyWithImpl(_$NoteTweetResultDataImpl _value,
      $Res Function(_$NoteTweetResultDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entitySet = null,
    Object? id = null,
    Object? media = null,
    Object? richtext = null,
    Object? text = null,
  }) {
    return _then(_$NoteTweetResultDataImpl(
      entitySet: null == entitySet
          ? _value.entitySet
          : entitySet // ignore: cast_nullable_to_non_nullable
              as Entities,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as NoteTweetResultMedia,
      richtext: null == richtext
          ? _value.richtext
          : richtext // ignore: cast_nullable_to_non_nullable
              as NoteTweetResultRichText,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetResultDataImpl implements _NoteTweetResultData {
  const _$NoteTweetResultDataImpl(
      {@JsonKey(name: 'entity_set') required this.entitySet,
      required this.id,
      required this.media,
      required this.richtext,
      required this.text});

  factory _$NoteTweetResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteTweetResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'entity_set')
  final Entities entitySet;
  @override
  final String id;
  @override
  final NoteTweetResultMedia media;
  @override
  final NoteTweetResultRichText richtext;
  @override
  final String text;

  @override
  String toString() {
    return 'NoteTweetResultData(entitySet: $entitySet, id: $id, media: $media, richtext: $richtext, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetResultDataImpl &&
            (identical(other.entitySet, entitySet) ||
                other.entitySet == entitySet) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.richtext, richtext) ||
                other.richtext == richtext) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entitySet, id, media, richtext, text);

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetResultDataImplCopyWith<_$NoteTweetResultDataImpl> get copyWith =>
      __$$NoteTweetResultDataImplCopyWithImpl<_$NoteTweetResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetResultDataImplToJson(
      this,
    );
  }
}

abstract class _NoteTweetResultData implements NoteTweetResultData {
  const factory _NoteTweetResultData(
      {@JsonKey(name: 'entity_set') required final Entities entitySet,
      required final String id,
      required final NoteTweetResultMedia media,
      required final NoteTweetResultRichText richtext,
      required final String text}) = _$NoteTweetResultDataImpl;

  factory _NoteTweetResultData.fromJson(Map<String, dynamic> json) =
      _$NoteTweetResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'entity_set')
  Entities get entitySet;
  @override
  String get id;
  @override
  NoteTweetResultMedia get media;
  @override
  NoteTweetResultRichText get richtext;
  @override
  String get text;

  /// Create a copy of NoteTweetResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetResultDataImplCopyWith<_$NoteTweetResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
