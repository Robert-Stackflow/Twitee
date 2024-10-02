// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quoted_status_permalink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotedStatusPermalink _$QuotedStatusPermalinkFromJson(
    Map<String, dynamic> json) {
  return _QuotedStatusPermalink.fromJson(json);
}

/// @nodoc
mixin _$QuotedStatusPermalink {
  String get display => throw _privateConstructorUsedError;
  String get expanded => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this QuotedStatusPermalink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuotedStatusPermalink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuotedStatusPermalinkCopyWith<QuotedStatusPermalink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotedStatusPermalinkCopyWith<$Res> {
  factory $QuotedStatusPermalinkCopyWith(QuotedStatusPermalink value,
          $Res Function(QuotedStatusPermalink) then) =
      _$QuotedStatusPermalinkCopyWithImpl<$Res, QuotedStatusPermalink>;
  @useResult
  $Res call({String display, String expanded, String url});
}

/// @nodoc
class _$QuotedStatusPermalinkCopyWithImpl<$Res,
        $Val extends QuotedStatusPermalink>
    implements $QuotedStatusPermalinkCopyWith<$Res> {
  _$QuotedStatusPermalinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuotedStatusPermalink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
    Object? expanded = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotedStatusPermalinkImplCopyWith<$Res>
    implements $QuotedStatusPermalinkCopyWith<$Res> {
  factory _$$QuotedStatusPermalinkImplCopyWith(
          _$QuotedStatusPermalinkImpl value,
          $Res Function(_$QuotedStatusPermalinkImpl) then) =
      __$$QuotedStatusPermalinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String display, String expanded, String url});
}

/// @nodoc
class __$$QuotedStatusPermalinkImplCopyWithImpl<$Res>
    extends _$QuotedStatusPermalinkCopyWithImpl<$Res,
        _$QuotedStatusPermalinkImpl>
    implements _$$QuotedStatusPermalinkImplCopyWith<$Res> {
  __$$QuotedStatusPermalinkImplCopyWithImpl(_$QuotedStatusPermalinkImpl _value,
      $Res Function(_$QuotedStatusPermalinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuotedStatusPermalink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
    Object? expanded = null,
    Object? url = null,
  }) {
    return _then(_$QuotedStatusPermalinkImpl(
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotedStatusPermalinkImpl implements _QuotedStatusPermalink {
  const _$QuotedStatusPermalinkImpl(
      {required this.display, required this.expanded, required this.url});

  factory _$QuotedStatusPermalinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotedStatusPermalinkImplFromJson(json);

  @override
  final String display;
  @override
  final String expanded;
  @override
  final String url;

  @override
  String toString() {
    return 'QuotedStatusPermalink(display: $display, expanded: $expanded, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotedStatusPermalinkImpl &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, display, expanded, url);

  /// Create a copy of QuotedStatusPermalink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotedStatusPermalinkImplCopyWith<_$QuotedStatusPermalinkImpl>
      get copyWith => __$$QuotedStatusPermalinkImplCopyWithImpl<
          _$QuotedStatusPermalinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotedStatusPermalinkImplToJson(
      this,
    );
  }
}

abstract class _QuotedStatusPermalink implements QuotedStatusPermalink {
  const factory _QuotedStatusPermalink(
      {required final String display,
      required final String expanded,
      required final String url}) = _$QuotedStatusPermalinkImpl;

  factory _QuotedStatusPermalink.fromJson(Map<String, dynamic> json) =
      _$QuotedStatusPermalinkImpl.fromJson;

  @override
  String get display;
  @override
  String get expanded;
  @override
  String get url;

  /// Create a copy of QuotedStatusPermalink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuotedStatusPermalinkImplCopyWith<_$QuotedStatusPermalinkImpl>
      get copyWith => throw _privateConstructorUsedError;
}
