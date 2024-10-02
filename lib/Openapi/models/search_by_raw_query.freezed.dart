// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_by_raw_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchByRawQuery _$SearchByRawQueryFromJson(Map<String, dynamic> json) {
  return _SearchByRawQuery.fromJson(json);
}

/// @nodoc
mixin _$SearchByRawQuery {
  @JsonKey(name: 'search_timeline')
  SearchTimeline get searchTimeline => throw _privateConstructorUsedError;

  /// Serializes this SearchByRawQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchByRawQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchByRawQueryCopyWith<SearchByRawQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchByRawQueryCopyWith<$Res> {
  factory $SearchByRawQueryCopyWith(
          SearchByRawQuery value, $Res Function(SearchByRawQuery) then) =
      _$SearchByRawQueryCopyWithImpl<$Res, SearchByRawQuery>;
  @useResult
  $Res call({@JsonKey(name: 'search_timeline') SearchTimeline searchTimeline});

  $SearchTimelineCopyWith<$Res> get searchTimeline;
}

/// @nodoc
class _$SearchByRawQueryCopyWithImpl<$Res, $Val extends SearchByRawQuery>
    implements $SearchByRawQueryCopyWith<$Res> {
  _$SearchByRawQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchByRawQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTimeline = null,
  }) {
    return _then(_value.copyWith(
      searchTimeline: null == searchTimeline
          ? _value.searchTimeline
          : searchTimeline // ignore: cast_nullable_to_non_nullable
              as SearchTimeline,
    ) as $Val);
  }

  /// Create a copy of SearchByRawQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchTimelineCopyWith<$Res> get searchTimeline {
    return $SearchTimelineCopyWith<$Res>(_value.searchTimeline, (value) {
      return _then(_value.copyWith(searchTimeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchByRawQueryImplCopyWith<$Res>
    implements $SearchByRawQueryCopyWith<$Res> {
  factory _$$SearchByRawQueryImplCopyWith(_$SearchByRawQueryImpl value,
          $Res Function(_$SearchByRawQueryImpl) then) =
      __$$SearchByRawQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'search_timeline') SearchTimeline searchTimeline});

  @override
  $SearchTimelineCopyWith<$Res> get searchTimeline;
}

/// @nodoc
class __$$SearchByRawQueryImplCopyWithImpl<$Res>
    extends _$SearchByRawQueryCopyWithImpl<$Res, _$SearchByRawQueryImpl>
    implements _$$SearchByRawQueryImplCopyWith<$Res> {
  __$$SearchByRawQueryImplCopyWithImpl(_$SearchByRawQueryImpl _value,
      $Res Function(_$SearchByRawQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchByRawQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTimeline = null,
  }) {
    return _then(_$SearchByRawQueryImpl(
      searchTimeline: null == searchTimeline
          ? _value.searchTimeline
          : searchTimeline // ignore: cast_nullable_to_non_nullable
              as SearchTimeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchByRawQueryImpl implements _SearchByRawQuery {
  const _$SearchByRawQueryImpl(
      {@JsonKey(name: 'search_timeline') required this.searchTimeline});

  factory _$SearchByRawQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchByRawQueryImplFromJson(json);

  @override
  @JsonKey(name: 'search_timeline')
  final SearchTimeline searchTimeline;

  @override
  String toString() {
    return 'SearchByRawQuery(searchTimeline: $searchTimeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchByRawQueryImpl &&
            (identical(other.searchTimeline, searchTimeline) ||
                other.searchTimeline == searchTimeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchTimeline);

  /// Create a copy of SearchByRawQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchByRawQueryImplCopyWith<_$SearchByRawQueryImpl> get copyWith =>
      __$$SearchByRawQueryImplCopyWithImpl<_$SearchByRawQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchByRawQueryImplToJson(
      this,
    );
  }
}

abstract class _SearchByRawQuery implements SearchByRawQuery {
  const factory _SearchByRawQuery(
      {@JsonKey(name: 'search_timeline')
      required final SearchTimeline searchTimeline}) = _$SearchByRawQueryImpl;

  factory _SearchByRawQuery.fromJson(Map<String, dynamic> json) =
      _$SearchByRawQueryImpl.fromJson;

  @override
  @JsonKey(name: 'search_timeline')
  SearchTimeline get searchTimeline;

  /// Create a copy of SearchByRawQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchByRawQueryImplCopyWith<_$SearchByRawQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
