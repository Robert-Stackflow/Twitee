import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/proxy_util.dart';
import 'package:twitee/Utils/request_header_util.dart';

import 'iprint.dart';

enum DomainType {
  api,
  graphql,
  v1,
  v2;

  String get baseUrl {
    switch (this) {
      case DomainType.api:
        return RequestUtil.apiUrl;
      case DomainType.graphql:
        return RequestUtil.graphqlUrl;
      case DomainType.v1:
        return RequestUtil.v1Url;
      case DomainType.v2:
        return RequestUtil.v2Url;
    }
  }
}

class RequestUtil {
  static RequestUtil instance = RequestUtil();
  static RequestUtil grahqlInstance =
      RequestUtil(domainType: DomainType.graphql);
  static RequestUtil v1Instance = RequestUtil(domainType: DomainType.v1);
  static RequestUtil v2Instance = RequestUtil(domainType: DomainType.v2);
  static const String apiUrl = "https://api.x.com";
  static const String graphqlUrl = "https://x.com/i/api/graphql";
  static const String v1Url = "https://x.com/i/api/1.1";
  static const String v2Url = "https://x.com/i/api/2";

  static const String csrfCookieKey = "ct0";

  static CookieJar? cookieJar;
  static CookieManager? cookieManager;

  late Dio dio;
  late BaseOptions options;

  static init() async {
    cookieJar = PersistCookieJar();
    cookieManager = CookieManager(cookieJar!);
    await shareCookie();
  }

  static Future<String?> getCookie(String key) async {
    return await cookieJar?.loadForRequest(Uri.parse(apiUrl)).then((value) {
      try {
        return value.firstWhere((element) => element.name == key).value;
      } catch (e) {
        return null;
      }
    });
  }

  static Future<Map> getCookies() async {
    List<Cookie>? cookies = await cookieJar?.loadForRequest(Uri.parse(apiUrl));
    Map<String, String> cookieMap = {};
    cookies?.forEach((cookie) {
      cookieMap[cookie.name] = cookie.value;
    });
    return cookieMap;
  }

  static Future<String?> getCsrfToken() async {
    return await getCookie(csrfCookieKey);
  }

  static Future<void> clearCookie() async {
    await cookieJar?.deleteAll();
  }

  static shareCookie() async {
    var cookies = await cookieJar?.loadForRequest(Uri.parse(apiUrl));
    cookieJar?.saveFromResponse(Uri.parse(graphqlUrl), cookies ?? []);
  }

  static RequestUtil getInstance([DomainType domainType = DomainType.api]) {
    switch (domainType) {
      case DomainType.api:
        return instance;
      case DomainType.graphql:
        return grahqlInstance;
      case DomainType.v1:
        return v1Instance;
      case DomainType.v2:
        return v2Instance;
    }
  }

  RequestUtil({
    DomainType domainType = DomainType.api,
  }) {
    options = BaseOptions(
      baseUrl: domainType.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 25),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    );
    dio = Dio(options);
    (dio.httpClientAdapter as IOHttpClientAdapter).validateCertificate =
        (X509Certificate? cert, String host, int port) => true;
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      return HttpClient()
        ..badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return true;
        }
        ..findProxy = (uri) {
          return ProxyUtil.dioProxy;
        };
    };
    dio.interceptors.add(cookieManager!);
  }

  Future<Response?> _get(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    DomainType? domainType,
  }) async {
    Response? response;
    options = await _preProcessRequest(
      options: options,
      domainType: domainType,
    );
    try {
      response = await dio.get(
        url,
        queryParameters: params,
        options: options,
      );
      _printResponse(response);
    } on DioException catch (e) {
      _printError(e);
      rethrow;
    }
    return response;
  }

  Future<Response?> _post(
    String url, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
    Options? options,
    DomainType? domainType,
    bool stream = false,
    List<int>? streamData,
  }) async {
    Response? response;
    options = await _preProcessRequest(
      options: options,
      domainType: domainType,
    );
    try {
      response = await dio.post(
        url,
        queryParameters: params,
        data: stream && streamData != null
            ? Stream.fromIterable(streamData.map((e) => [e]))
            : data,
        options: options,
      );
      _printResponse(response);
    } on DioException catch (e) {
      _printError(e);
      rethrow;
    }
    return response;
  }

  _preProcessRequest({
    Options? options,
    DomainType? domainType,
  }) async {
    options = options ?? Options();
    options.headers ??= {};
    options.headers?.addAll({
      "Authorization": RequestHeaderUtil.defaultAuthentication,
      "User-Agent": RequestHeaderUtil.defaultUA,
    });
    if (domainType != DomainType.api) {
      options.headers?.addAll({
        "x-csrf-token": await RequestUtil.getCsrfToken(),
      });
    }
    return options;
  }

  _printResponse(Response response) {
    Map<String, Object?> list = {
      "URL": response.requestOptions.uri,
    };
    if (response.requestOptions.headers['lofter-phone-login-auth'] != null) {
      list['Lofter-phone-login-auth'] =
          response.requestOptions.headers['lofter-phone-login-auth'] != null
              ? "有"
              : "无";
    }
    list["Cookie"] =
        response.requestOptions.headers['cookie'] != null ? "有" : "无";
    list["Content-Length"] = response.requestOptions.headers['Content-Length'];
    list["Content-Type"] = response.requestOptions.contentType;
    if (response.requestOptions.headers['authorization'] != null) {
      list['Authorization'] =
          response.requestOptions.headers['authorization'] != null ? "有" : "无";
    }
    if (response.requestOptions.method == "POST" &&
        response.requestOptions.data != null) {
      list['Request Body'] = response.requestOptions.data;
    }
    if (response.data is Map<dynamic, dynamic>) {
      list['Data'] = response.data;
    }
    IPrint.format(
      tag: response.requestOptions.method,
      status: "Success",
      list: list,
    );
  }

  static Future<Response?> get(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    DomainType domainType = DomainType.api,
  }) async {
    return getInstance(domainType)._get(
      url,
      params: params,
      options: options,
      domainType: domainType,
    );
  }

  static Future<Response?> post(
    url, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
    Options? options,
    DomainType domainType = DomainType.api,
    bool stream = false,
    List<int>? streamData,
  }) async {
    return getInstance(domainType)._post(
      url,
      params: params,
      data: data,
      options: options,
      stream: stream,
      streamData: streamData,
      domainType: domainType,
    );
  }

  void _printError(DioException e) {
    String info =
        '[${e.requestOptions.method}] [${e.requestOptions.uri}] [${e.requestOptions.headers}] [${e.response?.statusCode}] [${e.response?.data}]';
    if (e.type == DioExceptionType.connectionTimeout) {
      ILogger.error("DioException", "$info: 连接超时");
    } else if (e.type == DioExceptionType.sendTimeout) {
      ILogger.error("DioException", "$info: 请求超时");
    } else if (e.type == DioExceptionType.receiveTimeout) {
      ILogger.error("DioException", "$info: 响应超时");
    } else if (e.type == DioExceptionType.badResponse) {
      ILogger.error("DioException", "$info: 出现异常");
    } else if (e.type == DioExceptionType.cancel) {
      ILogger.error("DioException", "$info: 请求取消");
    } else {
      ILogger.error("DioException", "$info: $e");
    }
  }
}
