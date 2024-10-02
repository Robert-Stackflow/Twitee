// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v11get_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _V11getClient implements V11getClient {
  _V11getClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<void> getFriendsFollowingList({
    int includeProfileInterstitialType = 1,
    int includeBlocking = 1,
    int includeBlockedBy = 1,
    int includeFollowedBy = 1,
    int includeWantRetweets = 1,
    int includeMuteEdge = 1,
    int includeCanDm = 1,
    int includeCanMediaTag = 1,
    int includeExtHasNftAvatar = 1,
    int includeExtIsBlueVerified = 1,
    int includeExtVerifiedType = 1,
    int includeExtProfileImageShape = 1,
    int skipStatus = 1,
    int cursor = -1,
    String userId = '44196397',
    int count = 3,
    bool withTotalCount = true,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_profile_interstitial_type': includeProfileInterstitialType,
      r'include_blocking': includeBlocking,
      r'include_blocked_by': includeBlockedBy,
      r'include_followed_by': includeFollowedBy,
      r'include_want_retweets': includeWantRetweets,
      r'include_mute_edge': includeMuteEdge,
      r'include_can_dm': includeCanDm,
      r'include_can_media_tag': includeCanMediaTag,
      r'include_ext_has_nft_avatar': includeExtHasNftAvatar,
      r'include_ext_is_blue_verified': includeExtIsBlueVerified,
      r'include_ext_verified_type': includeExtVerifiedType,
      r'include_ext_profile_image_shape': includeExtProfileImageShape,
      r'skip_status': skipStatus,
      r'cursor': cursor,
      r'user_id': userId,
      r'count': count,
      r'with_total_count': withTotalCount,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/1.1/friends/following/list.json',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    await _dio.fetch<void>(_options);
  }

  @override
  Future<void> getSearchTypeahead({
    int includeExtIsBlueVerified = 1,
    int includeExtVerifiedType = 1,
    int includeExtProfileImageShape = 1,
    String q = 'test',
    String src = 'search_box',
    String resultType = 'events,users,topics',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_ext_is_blue_verified': includeExtIsBlueVerified,
      r'include_ext_verified_type': includeExtVerifiedType,
      r'include_ext_profile_image_shape': includeExtProfileImageShape,
      r'q': q,
      r'src': src,
      r'result_type': resultType,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/1.1/search/typeahead.json',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    await _dio.fetch<void>(_options);
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
