import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/core/i_network_service.dart';
import 'package:crave_app/domain/core/network_error.dart';

class NetworkService implements INetworkService {
  late final Dio dio;
  late final Connectivity connectivity;

  NetworkService({
    String? method,
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
    String baseUrl = '',
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? extra,
    Map<String, dynamic>? headers,
    ResponseType? responseType = ResponseType.json,
    String? contentType,
    bool Function(int?)? validateStatus,
    bool? receiveDataWhenStatusError,
    bool? followRedirects,
    int? maxRedirects,
    List<int> Function(String, RequestOptions)? requestEncoder,
    String Function(List<int>, RequestOptions, ResponseBody)? responseDecoder,
    ListFormat? listFormat,
    bool setRequestContentTypeWhenNoPayload = false,
    Iterable<Interceptor>? interceptors,
  }) {
    dio = Dio();
    final BaseOptions _options = BaseOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: headers,
      baseUrl: baseUrl,
      contentType: contentType,
      extra: extra,
      followRedirects: followRedirects,
      listFormat: listFormat,
      maxRedirects: maxRedirects,
      method: method,
      queryParameters: queryParameters,
      receiveDataWhenStatusError: receiveDataWhenStatusError,
      requestEncoder: requestEncoder,
      responseDecoder: responseDecoder,
      responseType: responseType,
      setRequestContentTypeWhenNoPayload: setRequestContentTypeWhenNoPayload,
      validateStatus: validateStatus,
    );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return baseUrl.contains(host);
      };
      return client;
    };
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }
    dio.options = _options;

    connectivity = Connectivity();
  }

  @override
  Future<Either<NetworkError, dynamic>> getHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'accept': ContentType.json.mimeType
        };

        if (header != null) {
          headers.addAll(header);
        }
        dio.options.headers = headers;

        final Response response = await dio.get(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkError.timeout());
          case DioErrorType.other:
            return left(NetworkError.other(error: e));
          default:
            return left(NetworkError.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkError.noInternet());
    }
  }

  @override
  Future<Either<NetworkError, dynamic>> postHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    dynamic content,
    String? contentType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }

        dio.options.headers = headers;

        final Response response = await dio.post(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkError.timeout());
          case DioErrorType.other:
            return left(NetworkError.other(error: e));
          default:
            return left(NetworkError.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkError.noInternet());
    }
  }

  @override
  Future<Either<NetworkError, dynamic>> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }

        dio.options.headers = headers;
        final Response response = await dio.put(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());

        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkError.timeout());
          case DioErrorType.other:
            return left(NetworkError.other(error: e));
          default:
            return left(NetworkError.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkError.noInternet());
    }
  }

  @override
  Future<Either<NetworkError, dynamic>> download({
    required String url,
    required String downloadPath,
    required String fileName,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> headers = {
          'Accept': ContentType.binary.mimeType,
        };
        final Directory savedDir = Directory(downloadPath);
        final bool hasExisted = await savedDir.exists();

        if (!hasExisted) {
          await savedDir.create(recursive: true);
        }
        dio.options.headers = headers;

        final Response response = await dio.download(
          url,
          '$downloadPath/$fileName',
          queryParameters: queryParameter,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkError.timeout());
          case DioErrorType.other:
            return left(NetworkError.other(error: e));
          default:
            return left(NetworkError.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkError.noInternet());
    }
  }
}
