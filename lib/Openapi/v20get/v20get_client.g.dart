// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v20get_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _V20getClient implements V20getClient {
  _V20getClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<void> getSearchAdaptive({
    int skipStatus = 1,
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
    int includeProfileInterstitialType = 1,
    String cardsPlatform = 'Web-12',
    int includeCards = 1,
    bool includeExtAltText = true,
    bool includeExtLimitedActionResults = false,
    bool includeQuoteCount = true,
    int includeReplyCount = 1,
    String tweetMode = 'extended',
    bool includeExtViews = true,
    bool includeEntities = true,
    bool includeUserEntities = true,
    bool includeExtMediaColor = true,
    String ext =
        'mediaStats,highlightedLabel,hasNftAvatar,voiceInfo,birdwatchPivot,enrichments,superFollowMetadata,unmentionInfo,editControl,vibe',
    bool includeExtSensitiveMediaWarning = true,
    bool includeExtTrustedFriendsMetadata = true,
    bool sendErrorCodes = true,
    bool simpleQuotedTweet = true,
    String q = 'elon musk',
    String querySource = 'trend_click',
    int count = 20,
    String requestContext = 'launch',
    int pc = 1,
    int spellingCorrections = 1,
    bool includeExtEditControl = true,
    bool includeExtMediaAvailability = true,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'skip_status': skipStatus,
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
      r'include_profile_interstitial_type': includeProfileInterstitialType,
      r'cards_platform': cardsPlatform,
      r'include_cards': includeCards,
      r'include_ext_alt_text': includeExtAltText,
      r'include_ext_limited_action_results': includeExtLimitedActionResults,
      r'include_quote_count': includeQuoteCount,
      r'include_reply_count': includeReplyCount,
      r'tweet_mode': tweetMode,
      r'include_ext_views': includeExtViews,
      r'include_entities': includeEntities,
      r'include_user_entities': includeUserEntities,
      r'include_ext_media_color': includeExtMediaColor,
      r'ext': ext,
      r'include_ext_sensitive_media_warning': includeExtSensitiveMediaWarning,
      r'include_ext_trusted_friends_metadata': includeExtTrustedFriendsMetadata,
      r'send_error_codes': sendErrorCodes,
      r'simple_quoted_tweet': simpleQuotedTweet,
      r'q': q,
      r'query_source': querySource,
      r'count': count,
      r'requestContext': requestContext,
      r'pc': pc,
      r'spelling_corrections': spellingCorrections,
      r'include_ext_edit_control': includeExtEditControl,
      r'include_ext_media_availability': includeExtMediaAvailability,
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
          '/2/search/adaptive.json',
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
