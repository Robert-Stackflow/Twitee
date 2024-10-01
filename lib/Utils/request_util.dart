import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/request_header_util.dart';

import 'hive_util.dart';
import 'iprint.dart';

enum DomainType { api, www }

// class CookieInterceptor extends Interceptor {
//   final CookieJar cookieJar;
//
//   CookieInterceptor(this.cookieJar);
//
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     final cookies = response.headers['Set-Cookie'];
//     if (cookies != null) {
//       for (var cookie in cookies) {
//         cookieJar.saveFromResponse(
//           response.request!.uri,
//           [cookie],
//         );
//       }
//     }
//     super.onResponse(response, handler);
//   }
// }

class RequestUtil {
  static RequestUtil instance = RequestUtil();
  static RequestUtil wwwInstance = RequestUtil(domainType: DomainType.www);
  late Dio dio;
  late BaseOptions options;
  static CookieJar? cookieJar;
  static CookieManager? cookieManager;
  static const String apiUrl = "https://api.x.com";
  static const String wwwUrl = "https://x.com/i/api/graphql";
  static const String csrfCookieKey = "ct0";

  static init() async {
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

  static Future<String?> getCsrfToken() async {
    return await getCookie(csrfCookieKey);
  }

  static RequestUtil getInstance({DomainType domainType = DomainType.api}) {
    switch (domainType) {
      case DomainType.api:
        return instance;
      case DomainType.www:
        return wwwInstance;
    }
  }

  RequestUtil({DomainType domainType = DomainType.api}) {
    String baseURL = "";
    switch (domainType) {
      case DomainType.api:
        baseURL = apiUrl;
        break;
      case DomainType.www:
        baseURL = wwwUrl;
        break;
    }
    options = BaseOptions(
      baseUrl: baseURL,
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
          return 'PROXY localhost:57310';
        };
    };
    cookieJar = PersistCookieJar();
    cookieManager = CookieManager(cookieJar!);
    dio.interceptors.add(cookieManager!);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.next(e);
        },
      ),
    );
  }

  static Future<void> clearCookie() async {
    await cookieJar?.deleteAll();
  }

  static shareCookie() async {
    var cookies = await cookieJar?.loadForRequest(Uri.parse(apiUrl));
    cookieJar?.saveFromResponse(Uri.parse(wwwUrl), cookies ?? []);
  }

  Future<Response?> _get(
    url, {
    params,
    options,
    domainType,
  }) async {
    Response? response;
    [params, options] = await _processRequest(
        params: params, options: options, domainType: domainType);
    try {
      response = await dio.get(
        url,
        queryParameters: params,
        options: options,
      );
      _processResponse(response);
    } on DioException catch (e) {
      formatError(e);
      return e.response;
    }
    return response;
  }

  Future<Response?> _post(
    url, {
    params,
    data,
    options,
    bool stream = false,
    domainType,
  }) async {
    Response? response;
    [params, options] = await _processRequest(
        params: params, options: options, domainType: domainType);
    try {
      response = await dio.post(
        url,
        queryParameters: params,
        data: stream && data is List<int>
            ? Stream.fromIterable(data.map((e) => [e]))
            : data,
        options: options,
      );
      _processResponse(response);
    } on DioException catch (e) {
      formatError(e);
      return e.response;
    }
    return response;
  }

  _processRequest({params, options, domainType}) async {
    options = options as Options? ?? Options();
    options.headers ??= {};
    options.headers?.addAll({
      "Authorization": RequestHeaderUtil.defaultAuthentication,
      "User-Agent": RequestHeaderUtil.defaultUA,
    });
    if (domainType == DomainType.www) {
      options.headers?.addAll({
        "x-csrf-token": await RequestUtil.getCsrfToken(),
      });
    }
    return [params, options];
  }

  _processResponse(Response response) {
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
    if (response.requestOptions.headers['cookie'] != null) {
      HiveUtil.put(
          HiveUtil.cookieKey, response.requestOptions.headers['cookie']);
    }
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
      // list['splitter'] = "";
      if (response.data['code'] != null) {
        list['Code'] = response.data['code'];
      }
      if (response.data['msg'] != null) {
        list['Message'] = response.data['msg'];
      }
      if (response.data['meta'] != null &&
          response.data['meta']['status'] != null) {
        list['Status'] = response.data['meta']['status'];
      }
      if (response.data['meta'] != null &&
          response.data['meta']['msg'] != null) {
        list['Message'] = response.data['meta']['msg'];
      }
      // if (response.data['data'] != null) {
      //   list['Data'] = response.data['data'];
      // }
      // if (response.data['response'] != null) {
      //   list['Data'] = response.data['response'];
      // }
    }
    IPrint.format(
      tag: response.requestOptions.method,
      status: "Success",
      list: list,
    );
  }

  static Future<Response?> get(
    url, {
    params,
    options,
    DomainType domainType = DomainType.api,
  }) async {
    return getInstance(domainType: domainType)._get(
      url,
      params: params,
      options: options,
      domainType: domainType,
    );
  }

  static Future<Response?> post(
    url, {
    params,
    data,
    options,
    DomainType domainType = DomainType.api,
    bool stream = false,
  }) async {
    return getInstance(domainType: domainType)._post(
      url,
      params: params,
      data: data,
      options: options,
      stream: stream,
      domainType: domainType,
    );
  }

  void formatError(DioException e) {
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
